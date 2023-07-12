const sidebar = document.querySelector(".md-sidebar");
const sidebarScroll = document.querySelector(".md-sidebar__scrollwrap");
if (false && sidebar) {
  function updateScrollHeight() {
    sidebarScroll.style.height = "70vh";
    window.requestAnimationFrame(updateScrollHeight);
  }
  window.requestAnimationFrame(updateScrollHeight);
  const thirdPartyContainer = document.createElement("div");
  thirdPartyContainer.innerHTML = `
  <br/><br/>
  <a href="https://tradeit.gg/?aff=comfig">
    <img style="height:8rem;width:8rem;aspect-ratio:1/1" src="https://mastercomfig.com/img/third_party/tradeit.webp" alt="tradeit.gg logo" width="128" height="128">
    <p style="font-size:.8rem">Sponsored by tradeit.gg</p>
  </a>
  `;
  sidebar.appendChild(thirdPartyContainer);
}
