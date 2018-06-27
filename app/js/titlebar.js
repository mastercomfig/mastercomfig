let closeBtn = document.getElementById("close-btn");
closeBtn.hidden = true;

function showWindowControls() {
  closeBtn.hidden = false;
}

closeBtn.addEventListener("click", () => {
  BrowserWindow.getFocusedWindow().close();
});

