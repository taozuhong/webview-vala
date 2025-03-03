# webview-vala
Vala binding for a tiny cross-platform [webview](https://github.com/webview/webview) library to build modern cross-platform GUIs.

<p align="center">
<img src="https://github.com/taozuhong/webview-vala/blob/main/screenshots/webview-simple.png"/>
</p>

### Requirements
 - [Vala Compiler](https://vala.dev/) - **0.56.0**
 - Unix
   - [GTK4](https://gtk.org/) and [WebKitGTK](https://webkitgtk.org/)
 - Windows
   - [WebView2 Runtime](https://www.nuget.org/packages/Microsoft.Web.WebView2/)
 - macOS
   - [WebKit](https://webkit.org/)

### Usage
```
meson setup build
meson compile -C build

./build/webview-vala.exe --embed &
```

### References
- [webview package version](https://github.com/webview/webview/commit/e2bd2e55c5984e43ebb3cc92fe1ebcb727917cb2)