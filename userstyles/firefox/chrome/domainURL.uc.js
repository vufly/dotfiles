// ==UserScript==
// @name            Domain URL
// @author          vufly
// @include         main
// @include         chrome://browser/content/places/bookmarksSidebar.xhtml
// @include         chrome://browser/content/places/historySidebar.xhtml
// @include         chrome://browser/content/places/places.xhtml
// @startup         UC.domainURL.exec(win);
// @shutdown        UC.domainURL.destroy();
// @onlyonce
// ==/UserScript==

UC.domainURL = {
  doc: null,
  contentDoc: null,
  urlBarInput: null,
  urlMouseEvent: null,
  urlChangeEvent: null,
  observer: null,

  shortenURL: function (e) {
    // console.log(e?.type);
    try {
      const url = new URL(this.urlBarInput.value);
      if (/(http|https):/.test(url.protocol)) {
        if (url.host.startsWith("www")) {
          url.host = url.host.slice(4);
        }
        this.urlBarInput.value = url.host;
      }
    } catch (err) {
      // console.log(err);
    }
  },

  exec: function (win) {
    let {
      document,
      contentDocument,
      gBrowser
    } = win;
    this.doc = document;
    this.contentDoc = contentDocument;
    this.urlBarInput = document.getElementById('urlbar-input');
    this.urlMouseEvent = this.urlBarInput.addEventListener('blur', () => this.shortenURL());
    gBrowser.tabContainer.addEventListener('TabSelect', (e) => this.shortenURL(e), false);
    gBrowser.tabContainer.addEventListener("TabAttrModified", (e) => this.shortenURL(e), false);
    gBrowser.tabContainer.addEventListener('TabOpen', (e) => this.shortenURL(e), false);
    gBrowser.tabContainer.addEventListener('TabClose', (e) => this.shortenURL(e), false);
    gBrowser.tabContainer.addEventListener('load', (e) => this.shortenURL(e), false);
    gBrowser.tabContainer.addEventListener("DOMContentLoaded", (e) => this.shortenURL(e), false);
  },

  destroy: function () {
    delete UC.domainURL;
  }
}
