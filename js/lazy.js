function loadImage(lazyImage) {
    if (lazyImage.parentNode.classList.contains("twentytwenty-container")) {
        lazyImage.onload = function() {
            $(window).trigger("resize.twentytwenty");
        }
    }
    lazyImage.src = lazyImage.dataset.src;
    lazyImage.classList.remove("lazy");
}

document.addEventListener("DOMContentLoaded", function() {
  var lazyImages = [].slice.call(document.querySelectorAll("img.lazy"));

  if ("IntersectionObserver" in window) {
    let lazyImageObserver = new IntersectionObserver(function(entries, observer) {
      entries.forEach(function(entry) {
        if (entry.isIntersecting) {
          let lazyImage = entry.target;
          loadImage(lazyImage);
          lazyImageObserver.unobserve(lazyImage);
        }
      });
    });

    lazyImages.forEach(function(lazyImage) {
      lazyImageObserver.observe(lazyImage);
    });
  } else {
    lazyImages.forEach(function(image) {
        loadImage(image);
    });
  }
});
