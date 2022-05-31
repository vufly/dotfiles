// ==UserScript==
// @name           Domain URL
// @version        1.0.0
// @author         vufly
// @description    Display only Domain in URL bar input
// ==/UserScript==
(function () {

  try {

    function shortenURL(e) {
      try {
        const url = new URL(urlBarInput.value);
        if (/(http|https):/.test(url.protocol)) {
          if (url.host.startsWith("www")) {
            url.host = url.host.slice(4);
          }
          urlBarInput.value = url.host;
        }
      } catch (err) {
        // console.log(err);
      }
    }

    var urlBarInput = document.getElementById('urlbar-input');
    var urlMouseEvent = urlBarInput.addEventListener('blur', () => shortenURL());
    gBrowser.tabContainer.addEventListener('TabSelect', (e) => shortenURL(e), false);
    gBrowser.tabContainer.addEventListener("TabAttrModified", (e) => shortenURL(e), false);
    gBrowser.tabContainer.addEventListener('TabOpen', (e) => shortenURL(e), false);
    gBrowser.tabContainer.addEventListener('TabClose', (e) => shortenURL(e), false);
    gBrowser.tabContainer.addEventListener('load', (e) => shortenURL(e), false);
    gBrowser.tabContainer.addEventListener("DOMContentLoaded", (e) => shortenURL(e), false);

  } catch (err) { }

})();
