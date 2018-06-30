"use strict";

const {app, BrowserWindow, ipcMain, session} = require("electron");
const os = require("os");
const settings = require("electron-settings");
const autoUpdater = require("electron-updater").autoUpdater;
const path = require("path");
const url = require("url");

let window = null;
let gpuWindow = null;

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
    if (gpuWindow !== null) {
      gpuWindow.destroy();
      gpuWindow = null;
    }
    window = null;
  });
}

let badVendors = ["Mesa"];

function getDynamicData(name, callback) {
  switch (name) {
    case "hardware.gpu.vendor":
      if (gpuWindow === null) {
        gpuWindow = new BrowserWindow({
          webPreferences: {
            offscreen: true,
            preload: path.join(__dirname, "js/gpu.js")
          },
          frame: false,
          show: false
        });
        gpuWindow.loadURL(url.format({
          pathname: "gpu",
          protocol: "chrome:",
          slashes: true
        }));
      }
      gpuWindow.webContents.executeJavaScript(
        "var browserBridge = { onGpuInfoUpdate:function(arg){sendGpuInfo(arg);}};");
      gpuWindow.webContents.executeJavaScript(
        "chrome.send('browserBridgeInitialized');");

      ipcMain.on("gpu-info", (event, arg) => {
        let glVendor = null;
        arg.basic_info.forEach((item) => {
          if (item.description === "GL_VENDOR") {
            if (glVendor === -1) {
              callback(item.value);
            } else {
              glVendor = item.value;
            }
          } else if (item.description === "Driver vendor") {
            if (badVendors.includes(item.value)) {
              if (glVendor) {
                callback(glVendor);
              } else {
                glVendor = -1;
              }
            } else {
              callback(item.value);
            }
          }
        });
      });
      break;
    case "hardware.cpu.cores":
      callback(os.cpus().length.toString() + "_");
      break;
    case "hardware.cpu.speed":
      callback((os.cpus()[0].speed / 1000).toFixed(0) + "_");
      break;
    case "hardware.cpu.model":
      callback(os.cpus()[0].model);
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
  autoUpdater.checkForUpdatesAndNotify();
});
