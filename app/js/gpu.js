window.sendGpuInfo = function(data) {
  ipcRenderer.send('gpu-info', data);
};
