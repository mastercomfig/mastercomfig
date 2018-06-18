'use strict';

const {app, BrowserWindow} = require('electron');
const os = require('os');
const settings = require('electron-settings');

let window;

function createWindow() {

  var windowOptions = {
    width: 1087,
    height: 672,
    show: false,
    minWidth: 320,
    minHeight: 240
  };

  if (os.type() !== "Darwin") {
    windowOptions['frame'] = false;
  }

  window = new BrowserWindow(windowOptions);
  //window.setMenu(null);

  if (settings.has('tf2-folder') && settings.has('upload-speed') && settings.has('preset')) {
    window.loadFile('mastercomfig.html');
  } else {
    window.loadFile('start.html');
  }

  window.once('ready-to-show', () => {
    window.show();
  });

  window.webContents.on('did-finish-load', () => {
    if (os.type() !== "Darwin") {
      window.webContents.executeJavaScript('showWindowControls()');
    }
  });

  window.on('closed', () => {
    window = null;
  });
}

app.on('window-all-closed', () => {
  app.quit();
});

app.on('ready', createWindow);
