"use strict";

if (settings.get("ui.dark")) {
  $("body")
    .addClass("bg-dark")
    .addClass("text-light");
  $(".navbar-light")
    .removeClass("navbar-light")
    .removeClass("bg-light")
    .addClass("navbar-dark")
    .addClass("bg-dark");
  let styleNode = document.createElement("style");
  styleNode.innerHTML = "x-card { background-color:  #424242; }";
  styleNode.innerHTML +=
    "x-accordion > header > x-label strong { color: rgba(248, 249, 250, .87) }";
  styleNode.innerHTML +=
    "x-accordion > header > x-label { color: rgba(248, 249, 250, .54) }";
  document.body.appendChild(styleNode);
}
