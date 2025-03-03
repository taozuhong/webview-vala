using Gtk;

public class Browser : Gtk.Widget {
    WebView.WebView m_webview;

    static construct {
        Windows.CoInitializeEx(null, Windows.COINIT.APARTMENTTHREADED);
        set_layout_manager_type(typeof(Gtk.BinLayout));
    }

    construct {
        layout_manager = new Gtk.BoxLayout(Gtk.Orientation.VERTICAL);
    }

    //  public Gtk.Widget? child {
    //      get { return m_webview; }
    //      set { m_webview = value; }
    //  }

    public void initialize(Gtk.Widget parent) {
#if WINDOWS || LINUX || ANDROID
        m_webview = new WebView.WebView(0, (void*)parent.root.get_surface());
#else  // MACOS
        //  mainWC := TCocoaWindowContentDocument(self.Handle);
        //  aRect.origin := mainWC.window.frame.origin;
        //  aRect.size.width := WebPanel.ClientWidth;
        //  aRect.size.height := WebPanel.ClientHeight;
        //  aView := NSView.alloc.initWithFrame(aRect);
        //  aWC := TCocoaWindowContentDocument(phwnd);
        //  aWC.addSubView(aView);
        //  wvWinMask := NSBorderlessWindowMask;
        //  wvWin := NSWindow.alloc.initWithContentRect_styleMask_backing_defer(
        //  aRect,
        //  wvWinMask,
        //  NSBackingStoreBuffered,
        //  false);
        //  //wvWin.setContentView(aView); // Done by libwebview.
        //  mainWC.window.addChildWindow_ordered(wvWin, NSWindowAbove);
        //  wvHandle := webview_create(WebView_DevTools, Pointer(wvWin));
#endif
    }
    
    public override void dispose () {    
        m_webview = null;
    
        base.dispose ();
    }

    protected override void size_allocate(int width, int height, int baseline) {
        base.size_allocate(width, height, baseline);
        m_webview.set_size(width, height, WebView.Hint.FIXED);
        Windows.MoveWindow(m_webview, 0, 0, width, height, 0x01);
    }

    public void navigate(string url)
    {
        GLib.return_if_fail(null != m_webview);
        m_webview.navigate(url);
        m_webview.run();
    }

    public void show_html(string content)
    {
        GLib.return_if_fail(null != m_webview);
        m_webview.set_html(content);
        m_webview.run();
    }
}
