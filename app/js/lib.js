"use strict";

const {ipcRenderer} = require("electron");
const {BrowserWindow, app} = require("electron").remote;
const settings = require("electron-settings");
const http = require("http");
const https = require("https");
const fs = require("fs");
const ua = require("universal-analytics");

const firebase = require("firebase");
require("firebase/firestore");

// Initialize Firebase
var config = {
  apiKey: "AIzaSyBETZTOgv7hlOL1sHlskFftbmjF0eJl4zo",
  authDomain: "mastercomfig-a9225.firebaseapp.com",
  databaseURL: "https://mastercomfig-a9225.firebaseio.com",
  projectId: "mastercomfig-a9225",
  storageBucket: "mastercomfig-a9225.appspot.com",
  messagingSenderId: "765315683049"
};
firebase.initializeApp(config);

let visitor;

if (settings.get("tracking-consent", true)) {
  visitor = ua("UA-122662888-1");
  visitor.set("ds", "app");
  visitor.set("an", app.getName());
  visitor.set("av", app.getVersion());
}

const db = firebase.firestore();
db.settings({timestampsInSnapshots: true});

Number.prototype.roundD = function(decimals, rounder) {
  if (!rounder) {
    rounder = Math.round;
  }
  return Number(rounder(this + "e" + decimals) + "e-" + decimals);
};

Number.prototype.ceilD = function(decimals) {
  return this.roundD(decimals, Math.ceil);
};

Number.prototype.floorD = function(decimals) {
  return this.roundD(decimals, Math.ceil);
};

Number.prototype.clamp = function(min, max) {
  return Math.min(Math.max(this, min), max);
};

String.prototype.toProperCase = function() {
  return this.replace(/\w\S*/g, function(txt) {
    return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();
  });
};

String.prototype.escapeRegExp = function() {
  return this.replace(/([.*+?^=!:${}()|\[\]\/\\])/g, "\\$1");
};

String.prototype.replaceAll = function(substr, replacement) {
  return this.replace(new RegExp(substr.escapeRegExp(), "g"), replacement);
};

function getResponse(url, file) {
  return new Promise((resolve, reject) => {
    const requester = url.startsWith("https:") ? https : http;
    var request = requester.get(url, response => {
      if (response.statusCode === 200) {
        resolve(response);
      } else if ([301, 302].indexOf(response.statusCode) !== -1 &&
        response.headers.location) {
        requester.get(response.headers.location, response => resolve(response));
      } else {
        reject(
          `Server responded with ${response.statusCode}: ${response.statusMessage}`);
      }
    });

    if (file) {
      request.on("error", err => {
        file.close();
        fs.unlink(file.path, () => {
        });
        reject(err.message);
      });
    }
  });
}

function download(url, dest) {
  return new Promise((resolve, reject) => {
    const file = fs.createWriteStream(dest);

    getResponse(url, file)
      .then((response) => {
        response.pipe(file);

        file.on("finish", () => {
          resolve();
        });

        file.on("error", err => {
          file.close();
          fs.unlink(dest, () => {
          });
          reject(err.message);
        });
      })
      .catch((error) => {
        reject(error);
      });
  });
}

let sha = settings.get("config-sha");

function setTargetSha(newSha) {
  settings.set("config-sha", newSha);
  sha = newSha;
}

function fetchConfigData(path) {
  return fetch(settings.get(
    "config-data-url",
    "https://raw.githubusercontent.com/mastercoms/mastercomfig/") +
    sha + "/" + path);
}
