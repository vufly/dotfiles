// ==UserScript==
// @name            Vertical tab
// @author          vufly
// @include         main
// @include         chrome://browser/content/places/bookmarksSidebar.xhtml
// @include         chrome://browser/content/places/historySidebar.xhtml
// @include         chrome://browser/content/places/places.xhtml
// @startup         UC.verticalTab.exec(win);
// @shutdown        UC.verticalTab.destroy();
// @onlyonce
// ==/UserScript==

// based on https://addons.mozilla.org/en-US/firefox/addon/open-link-in-silent-tab/

UC.verticalTab = {
  exec: function (win) {
    let {document} = win;
    var tabbar = document.getElementById("TabsToolbar");
    function showHideTabbar() {
        var sidebarBox = document.getElementById("sidebar-box");
        var sidebarTST = sidebarBox.getAttribute("sidebarcommand");
        if (!sidebarBox.hidden && (sidebarTST === "treestyletab_piro_sakura_ne_jp-sidebar-action" || sidebarTST === "tabcenter-reborn_ariasuni-sidebar-action")) {
            tabbar.style.visibility = "collapse";
        }
        else tabbar.style.visibility = "visible";
    }
    var observer = new MutationObserver(showHideTabbar);
    observer.observe(document.getElementById("sidebar-box"), { attributes: true, attributeFilter: ["sidebarcommand", "hidden"] });  
  },

  destroy: function () {
    delete UC.verticalTab;
  }
}