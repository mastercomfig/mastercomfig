if (
  window.location.pathname.indexOf("cvar") !== -1 ||
  window.location.pathname.indexOf("launchopts") !== -1
) {
  // https://github.com/squidfunk/mkdocs-material/issues/619#issuecomment-348610715
  var styles = `
    @media only screen and (min-width: 76.25em) {
      .md-grid {
        max-width: none;
      }
    }
  `;

  var stylesheet = document.createElement("style");
  stylesheet.type = "text/css";
  stylesheet.innerText = styles;
  document.head.appendChild(stylesheet);
}
