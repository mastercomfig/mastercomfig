String.prototype.toProperCase = function () {
  return this.replace(/\w\S*/g, function (txt) {
    return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();
  });
};

const http = require("http");
const https = require("https");
const fs = require("fs");

function getResponse(url, file) {
  return new Promise((resolve, reject) => {
    const requester = url.startsWith("https:") ? https : http;
    var request = requester.get(url, response => {
      if (response.statusCode === 200) {
        resolve(response);
      } else if ([301,302].indexOf(response.statusCode) !== -1 && response.headers.location) {
        requester.get(response.headers.location, response => resolve(response));
      } else {
        reject(`Server responded with ${response.statusCode}: ${response.statusMessage}`);
      }
    });

    if (file) {
      request.on("error", err => {
        file.close();
        fs.unlink(file.path, () => {});
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
            fs.unlink(dest, () => {});
            reject(err.message);
          });
        })
        .catch((error) => {
          reject(error)
        });
  });
}
