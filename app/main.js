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
        if (data.toLowerCase().startsWith("intel") ||
          data.toLowerCase().startsWith("%intellimodder32%")) {
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
      si.cpu()
        .then(cpu => {
          callback(cpu.speedmax);
        });
      break;
    case "hardware.cpu.model":
      callback(os.cpus()[0].model);
      break;
    case "hardware.memory.size.available":
      si.mem()
        .then(mem => {
          callback(mem.available / 1073741824);
        });
      break;
    case "hardware.disk.type":
      si.blockDevices()
        .then(disks => {
          var tf2Folder = settings.get("tf2-folder");
          let tf2Part;
          let diskType;
          let physicalDisks = [];
          disks.forEach(disk => {
            if (!diskType) {
              if (tf2Part) {
                if (tf2Part.name.startsWith(disk.name) && disk.type ===
                  "disk") {
                  diskType = disk.physical;
                  if (os.type() === "Windows_NT") {
                    si.diskLayout().then(physDisks => {
                      physDisks.forEach(phys => {
                        if (phys.serialNum === disk.serial) {
                          diskType = phys.type;
                          if (diskType === "HD") {
                            diskType = "HDD";
                          }
                        }
                      })
                    });
                  }
                }
              } else if (disk.mount &&
                tf2Folder.startsWith(disk.mount)) {
                tf2Part = disk;
                diskType = disk.physical;
              } else if (disk.type === "disk") {
                physicalDisks.push(disk);
              }
            }
          });
          if (!diskType) {
            physicalDisks.forEach(disk => {
              if (tf2Part.name.startsWith(disk.name) && disk.type === "disk") {
                diskType = disk.physical;
              }
            });
            if (!diskType) {
              diskType = "HDD";
            }
          }
          callback(diskType);
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

autoUpdater.on("update-available", () => {
  dialog.showMessageBox({
    title: "mastercomfig update",
    message: "We've found and started downloading a new update for" +
    " the mastercomfig app.",
    buttons: ["Okay, got it"]
  });
});

autoUpdater.on("update-downloaded", () => {
  dialog.showMessageBox({
    title: "mastercomfig update",
    message: "The update is ready to go. Be right back" +
    " while we install it!",
    buttons: ["Okay, got it"]
  }, () => {
    setImmediate(() => autoUpdater.quitAndInstall(true, true));
  });
});


