"use strict";

function darkify(dark) {
  if (!dark) {
    dark = settings.get("ui.dark");
    if (!dark) {
      $("body")
        .removeClass("bg-dark")
        .removeClass("text-light");
      $(".navbar-dark").filter(".fixed-bottom")
        .removeClass("navbar-dark")
        .removeClass("bg-dark")
        .addClass("navbar-light")
        .addClass("bg-light");
      return;
    }
  }
  if (dark) {
    $("body")
      .addClass("bg-dark")
      .addClass("text-light");
    $(".navbar-light")
      .removeClass("navbar-light")
      .removeClass("bg-light")
      .addClass("navbar-dark")
      .addClass("bg-dark");
    let styleNode = document.createElement("style");
    styleNode.innerHTML = "x-card { background-color:" +
      "  #424242; }";
    styleNode.innerHTML += "x-card > header { background-color:" +
      "  #212121; border-top: 1px solid #212121; border-bottom: 1px solid #212121}";
    styleNode.innerHTML +=
      "x-accordion > header > x-label strong { color: rgba(248, 249, 250, .87) }";
    styleNode.innerHTML +=
      "x-accordion > header > x-label { color: rgba(248, 249, 250, .54) }";
    document.body.appendChild(styleNode);
  }
}

$(() => darkify());
