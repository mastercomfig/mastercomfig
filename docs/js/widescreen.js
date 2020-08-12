if (window.location.pathname.indexOf("cvar") !== -1 || window.location.pathname.indexOf("launchopts") !== -1) {
  // https://github.com/squidfunk/mkdocs-material/issues/619#issuecomment-348610715
  var styles = `
    @media only screen and (min-width: 76.25em) {
      .md-main__inner {
        max-width: none;
      }
      .md-sidebar--primary {
        left: 0;
      }
      .md-sidebar--secondary {
        right: 0;
        margin-left: 0;
        -webkit-transform: none;
        transform: none;
      }
    }
  `;

  var stylesheet = document.createElement("style");
  stylesheet.type = "text/css";
  stylesheet.innerText = styles;
  document.head.appendChild(stylesheet);
}
