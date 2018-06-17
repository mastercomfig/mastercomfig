const {BrowserWindow} = require('electron').remote;

let closeBtn = document.getElementById('close-btn');
closeBtn.hidden = true;

function showWindowControls() {
  closeBtn.hidden = false;
}

closeBtn.addEventListener('click', e => {
  BrowserWindow.getFocusedWindow().close();
});

