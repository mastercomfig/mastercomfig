"use strict";

window.eval = global.eval = function() {
  throw new Error(`Sorry, this app does not support window.eval().`);
};

if (typeof module === "object") {
  window.module = module;
  module = undefined;
}