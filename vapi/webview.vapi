/*
 * Tiny cross-platform webview library(WebView) Vala Bindings
 * https://github.com/webview/webview
 * 
 * MIT License
 * Copyright (c) 2020 taozuhong
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

[CCode (cheader_filename = "webview.h")]
namespace WebView {
    [CCode (cprefix = "WEBVIEW_HINT_")]
    public enum Hint {
        NONE,
        MIN,
        MAX,
        FIXED
    }

    [CCode (cprefix = "WEBVIEW_NATIVE_HANDLE_KIND_")]
    public enum HandleKind {
        UI_WINDOW,
        UI_WIDGET,
        BROWSER_CONTROLLER
    }

    [CCode (cname = "webview_version_t")]
    public struct VersionInternal {
        uint major;
        uint minor;
        uint patch;
    }

    [CCode (cname = "webview_version_info_t")]
    public struct VersionInformation {
        /// The elements of the version number.
        VersionInternal version;
        /// SemVer 2.0.0 version number in MAJOR.MINOR.PATCH format.
        uint8 version_number[32];
        /// SemVer 2.0.0 pre-release labels prefixed with "-" if specified, otherwise an empty string.
        uint8 pre_release[48];
        /// SemVer 2.0.0 build metadata prefixed with "+", otherwise an empty string.
        uint8 build_metadata[48];
    }

    [CCode (cprefix = "WEBVIEW_ERROR_")]
    public enum Errors {
        /// Missing dependency.
        MISSING_DEPENDENCY,
        /// Operation canceled.
        CANCELED,
        /// Invalid state detected.
        INVALID_STATE,
        /// One or more invalid arguments have been specified e.g. in a function call.
        INVALID_ARGUMENT,
        /// An unspecified error occurred. A more specific error code may be needed.
        UNSPECIFIED,
        /// OK/Success. 
        OK,
        /// Signifies that something already exists.
        DUPLICATE,
        /// Signifies that something does not exist.
        NOT_FOUND
    }

    public delegate void DispatchCallback(WebView w, void* arg);
    public delegate void BindCallback(string seq, string req, void* arg);

    [Compact]
	[CCode (cname = "webview_t", cprefix = "webview_", free_function = "webview_destroy")]
	public class WebView {
		[CCode (cname = "webview_create")]
		public WebView (int debug, void *window);

        public void run();
        public void terminate();
        public void dispatch(DispatchCallback fn, void *arg);
        public void* get_window();
        public void* get_native_handle(HandleKind kind);
        public void set_title(string title);
        public void set_size(int width, int height, Hint hints);
        public void navigate(string url);
        public void set_html(string html);
        public void init(string js);
        public void eval(string js);
        public void bind(string name, BindCallback fn,  void *arg);
        public void unbind(string name);
        public void @return (string seq, int status, string result);
        public VersionInformation *version();
	}
}