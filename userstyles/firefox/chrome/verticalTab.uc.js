// ==UserScript==
// @name            Vertical tab
// @author          vufly
// @include         main
// @include         chrome://browser/content/places/bookmarksSidebar.xhtml
// @include         chrome://browser/content/places/historySidebar.xhtml
// @include         chrome://browser/content/places/places.xhtml
// ==/UserScript==

(function () {
  var tabbar = document.getElementById("TabsToolbar");
  var sidebarBox = document.getElementById("sidebar-box");
  function showHideTabbar() {
      var sidebarCmd = sidebarBox.getAttribute("sidebarcommand");
      if (!sidebarBox.hidden && (sidebarCmd === "treestyletab_piro_sakura_ne_jp-sidebar-action" || sidebarCmd === "tabcenter-reborn_ariasuni-sidebar-action")) {
          tabbar.style.visibility = "collapse";
      }
      else tabbar.style.visibility = "visible";
  }
  var observer = new MutationObserver(showHideTabbar);
  observer.observe(sidebarBox, { attributes: true, attributeFilter: ["sidebarcommand", "hidden"] });
})()
