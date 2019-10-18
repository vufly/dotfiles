var DoubleClickAnywhereOnTabsToolbar = {
  init: function() {
    try {
      gBrowser.tabContainer.addEventListener(
        "dblclick",
        function abcd(e) {
          if (e.button == 0) {
            e.stopPropagation();
            e.preventDefault();

            gBrowser.reload();
          }
        },
        true
      );
    } catch (e) {}
  }
};

setTimeout(function() {
  DoubleClickAnywhereOnTabsToolbar.init();
}, 500);
