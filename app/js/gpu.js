const {ipcRenderer} = require("electron");

window.sendGpuInfo = function(data) {
  ipcRenderer.send("gpu-info", data);
};
