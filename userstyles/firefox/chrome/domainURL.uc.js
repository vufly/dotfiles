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

// based on https://addons.mozilla.org/en-US/firefox/addon/open-link-in-silent-tab/

UC.domainURL = {
  doc: null,
  contentDoc: null,
  urlBarInput: null,
  urlMouseEvent: null,
  urlChangeEvent: null,
  observer: null,

  shortenURL: function () {
    try {
      const url = new URL(this.urlBarInput.value);
      if (/(http|https):/.test(url.protocol)) {
        if (url.host.startsWith("www")) {
          url.host = url.host.slice(4);
        }
        this.urlBarInput.value = url.host;
      }
    } catch (err) {
      console.log(err);
    }
  },

  onTabChange: function () {
    const _this = this
    setTimeout(() => {
      try {
        const url = new URL(_this.urlBarInput.value);
        if (/(http|https):/.test(url.protocol)) {
          if (url.host.startsWith("www")) {
            url.host = url.host.slice(4);
          }
          _this.urlBarInput.value = url.host;
        }
      } catch (err) {
        console.log(err);
      }
    }, 100)
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
    this.urlMouseEvent = this.urlBarInput.addEventListener('change', () => {console.log('change')});
    gBrowser.tabContainer.addEventListener('TabSelect', () => this.onTabChange());
  },

  destroy: function () {
    // this.doc.removeEventListener('blur', this.shortenURL);
    delete UC.domainURL;
  }
}

// UC.domainURL = {
//   exec: function (win) {
//     let {
//       BrowserUIUtils,
//       XULBrowserWindow
//     } = win;

//     BrowserUIUtils.trimURL = function trimURL(aURL) {
//       let urlString = this.removeSingleTrailingSlashFromURL(aURL);
//       try {
//         const url = new URL(urlString);
//         if (/(http|https):/.test(url.protocol)) {
//           if (url.host.startsWith("www")) {
//             url.host = url.host.slice(4);
//           }
//           return url.host;
//         } else {
//           return urlString;
//         }
//       } catch (err) {
//         return urlString;
//       }
//     }

//     XULBrowserWindow.setOverLink = function setOverLink(url) {
//       if (url) {
//         url = Services.textToSubURI.unEscapeURIForUI(url);
    
//         // Encode bidirectional formatting characters.
//         // (RFC 3987 sections 3.2 and 4.1 paragraph 6)
//         url = url.replace(
//           /[\u200e\u200f\u202a\u202b\u202c\u202d\u202e]/g,
//           encodeURIComponent
//         );
//       }
    
//       this.overLink = url;
//       LinkTargetDisplay.update();
//     }
//   },

//   destroy: function () {
//     // this.doc.removeEventListener('blur', this.shortenURL);
//     delete UC.domainURL;
//   }
// }