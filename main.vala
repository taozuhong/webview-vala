using Gtk;
using GLib;

public class Win32Embedder : Gtk.Application {
    public Win32Embedder () {
        Object (application_id: "com.example.EmbedWin32Window");
    }

    protected override void activate () {
        var window = new Gtk.ApplicationWindow (this);
        window.title = "Embed Win32 Window Example";
        window.width_request = 800;
        window.height_request = 600;

        var gtk_box = new Gtk.Box (Gtk.Orientation.VERTICAL, 5);
        window.set_child (gtk_box);

        var text_entry = new Gtk.Entry();
        text_entry.placeholder_text = "Input url here";
        text_entry.primary_icon_name = "emblem-web";
        text_entry.secondary_icon_name = "applications-system-symbolic";
        var key_press_event = new Gtk.EventControllerKey();
        key_press_event.key_pressed.connect((event, keyval, keycode, state) => {
            if (keyval == Gdk.Key.Return) {
                GLib.message((event.widget as Gtk.Entry).text);
                return Gdk.EVENT_STOP;
            } else {
                return Gdk.EVENT_PROPAGATE;
            }
        });
        text_entry.add_controller(key_press_event);
        gtk_box.append (text_entry);

        Browser browser = new Browser();
        browser.navigate("https://github.com/webview/webview");
        gtk_box.append (browser);

        window.present ();
    }

    public static int main (string[] args) {
        if ((0 == args.length) || ("--embed" == args[1])) {
            var app = new Win32Embedder ();
            return app.run ({});
        } else {
            WebView.WebView wv = new WebView.WebView(0, (void*)0);
            wv.navigate("https://github.com/webview/webview");
            wv.run();
            return 0;
        }
    }
}