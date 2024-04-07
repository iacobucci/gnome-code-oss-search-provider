# gnome-duckduckgo-search-provider

![screenshot](misc/screenshot.png)

It provides DuckDuckGo search with completion for the GNOME Shell, because I really needed this. Works with !bangs too.
You need to actually use the "!" before the shortcut, sadly it didn't fit into the screenshot :(

# Installation

## Fedora

I'm currently using fedora so I'm willing to post the rpm package on a copr repo sometime soon.

### Manual

Ensure that python>=3.7 as well as the dbus, gobject and  duckduckgo_search Python modules are installed. They should all be packaged under python-name or python3-name depending on your distribution.

Clone this repository and run the installation script as root:
```
git clone https://github.com/iacobucci/gnome-duckduckgo-search-provider.git
cd gnome-pass-search-provider
sudo ./install.sh
```

## Post-installation

Log out and reopen your GNOME session.

The search provider will be loaded automatically when doing a search.

You should see it enabled in GNOME Settings, in the Search pane. This is also where you can move it up or down in the list of results relatively to other search providers.

## Other problems

If you encounter problems, make sure to look in the logs of GNOME and D-Bus. On systems that use systemd, you can do this using `journalctl --user`.

Don't hesitate to open an issue.
