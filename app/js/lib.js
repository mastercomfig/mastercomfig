String.prototype.toProperCase = function () {
  return this.replace(/\w\S*/g, function (txt) {
    return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();
  });
};

const http = require("http");
const https = require("https");
const fs = require("fs");

function download(url, dest) {
  return new Promise((resolve, reject) => {
    const file = fs.createWriteStream(dest, { flags: "w" });

    const requester = url.startsWith("https:") ? https : http;

    const request = requester.get(url, response => {
      if (response.statusCode === 200) {
        response.pipe(file);
      } else if ([301,302].indexOf(response.statusCode) !== -1 && response.headers.location) {
        resolve(download(response.headers.location, dest));
      } else {
        file.close();
        fs.unlink(dest, () => {});
        reject(`Server responded with ${response.statusCode}: ${response.statusMessage}`);
      }
    });

    request.on("error", err => {
      file.close();
      fs.unlink(dest, () => {});
      reject(err.message);
    });

    file.on("finish", () => {
      resolve();
    });

    file.on("error", err => {
      file.close();
      fs.unlink(dest, () => {});
      reject(err.message);
    });
  });
}
