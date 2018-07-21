"use strict";

let closeBtn = document.getElementById("close-btn");
closeBtn.hidden = true;

function showWindowControls() {
  closeBtn.hidden = false;
}

closeBtn.addEventListener("click", () => {
  BrowserWindow.getFocusedWindow().close();
});

function slider() {
  let sliderToggle = document.getElementById("slider-toggle");

  let slided = false;

  if (sliderToggle) {
    sliderToggle.addEventListener("click", () => {
      if (slided) {
        $("#slider").animate({left: "-30%"}, 350);
      } else {
        $("#slider").animate({left: 0}, 350);
      }
      slided = !slided;
    });
  }
}

$(() => slider());
