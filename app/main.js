"use strict";

const {app, BrowserWindow, ipcMain, session, dialog} = require("electron");
const os = require("os");
const si = require("systeminformation");
const settings = require("electron-settings");
const autoUpdater = require("electron-updater").autoUpdater;

let window = null;

function createWindow() {

  let windowOptions = {
    width: 1087,
    height: 672,
    show: false,
    minWidth: 320,
    minHeight: 240,
    webPreferences: {
      devTools: true
    }
  };

  if (os.type() !== "Darwin") {
    windowOptions["frame"] = false;
  }

  window = new BrowserWindow(windowOptions);

  if (settings.has("tf2-folder") && settings.has("upload-speed") &&
    settings.has("preset")) {
    window.loadFile("mastercomfig.html");
  } else {
    window.loadFile("start.html");
  }

  window.once("ready-to-show", () => {
    window.show();
  });

  window.webContents.on("did-finish-load", () => {
    if (os.type() !== "Darwin") {
      window.webContents.executeJavaScript("showWindowControls()");
    }
  });

  window.on("closed", () => {
    window = null;
  });
}

function getDynamicData(name, callback) {
  switch (name) {
    case "hardware.gpu.vendor":
      si.graphics()
        .then(data => {
          let currentVendor;
          data.controllers.forEach(card => {
            if (!currentVendor || currentVendor === "Intel") {
              currentVendor = card.vendor;
            }
          });
          if (!currentVendor) {
            currentVendor = "Intel";
          }
          callback(currentVendor);
        });
      break;
    case "hardware.gpu.type":
      getDynamicData("hardware.gpu.vendor", data => {
        if (data === "Intel" || data === "%IntelliModder32%") {
          callback("Intel");
        } else {
          callback("Dedicated");
        }
      });
      break;
    case "hardware.cpu.cores":
      callback(os.cpus().length);
      break;
    case "hardware.cpu.speed":
      callback((os.cpus()[0].speed / 1000));
      break;
    case "hardware.cpu.model":
      callback(os.cpus()[0].model);
      break;
    case "hardware.memory.size.available":
      si.mem()
        .then(mem => {
          callback(mem.available);
        });
      break;
    case "hardware.disk.type":
      si.blockDevices()
        .then(disks => {
           disks.forEach(disk => {
             console.log(disk.name);
             console.log(disk.type);
             console.log(disk.mount);
             console.log(disk.physical);
           });
           callback("SSD");
        });
      break;
    case "software.os.name":
      callback(os.type());
      break;
    default:
      callback("none");
      break;
  }
}

ipcMain.on("dynamic-data-request", (event, arg) => {
  getDynamicData(arg, (data) => {
    event.sender.send("dynamic-data-reply", {
      key: arg,
      data: data
    });
  });
});

ipcMain.on("dev-tools-open", () => {
  window.webContents.openDevTools();
});

app.on("window-all-closed", () => {
  app.quit();
});

app.on("ready", () => {
  session.defaultSession.webRequest.onHeadersReceived((details, callback) => {
    callback({responseHeaders: `default-src 'none'`});
  });

  createWindow();

  autoUpdater.allowPrerelease = true;
  autoUpdater.allowDowngrade = true;
  autoUpdater.checkForUpdates();
});

autoUpdater.on('update-available', () => {
  dialog.showMessageBox({
    title: "mastercomfig update",
    message: "We've found and started downloading a new update for" +
    " mastercomfig."
  });
});


autoUpdater.on('update-downloaded', () => {
  dialog.showMessageBox({
    title: "mastercomfig update",
    message: "The update is ready to go. Be right back" +
    " while we install it!"
  }, () => {
    setImmediate(() => autoUpdater.quitAndInstall(true, true))
  });
});


