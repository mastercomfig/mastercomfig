"use strict";

// Init quality image compare
$(function() {
    $("#quality-compare").twentytwenty({
        before_label: 'Low',
        after_label: 'Ultra'
    });
});

// Init customization example highlighting
hljs.initHighlightingOnLoad();

// If we scroll down to the bars, do an anim
document.addEventListener('scroll', function() {
    if ($('#comanglia-bar').visible()) {
        document.getElementById('mastercomfig-bar').style.width = '100%';
        document.getElementById('comanglia-bar').style.width = '95%';
        document.getElementById('m0re-bar').style.width = '94%';
        document.getElementById('chris-bar').style.width = '88%';
        document.getElementById('rhapsody-bar').style.width = '83%';
        $(window).off('scroll');
    }
}, {passive: true});

// If page loaded with bars visible, then still do the anim
if ($('#comanglia-bar').visible()) {
    document.getElementById('mastercomfig-bar').style.width = '100%';
    document.getElementById('comanglia-bar').style.width = '94%';
    document.getElementById('m0re-bar').style.width = '93%';
    document.getElementById('chris-bar').style.width = '87%';
    document.getElementById('rhapsody-bar').style.width = '82%';
    $(window).off('scroll');
}

$('#compareModal').on('shown.bs.modal', function () {
  $("#quality-compare-large").twentytwenty({
      before_label: 'Low',
      after_label: 'Ultra'
  });
});
