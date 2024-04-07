#!/usr/bin/env bash
set -eu -o pipefail
cd "$(dirname "$(realpath "${0}")")"

DATADIR=${DATADIR:-/usr/share}
LIBDIR=${LIBDIR:-/usr/lib}

# The actual executable
install -Dm 0755 gnome-vscode-search-provider.py "${LIBDIR}"/gnome-vscode-search-provider/gnome-vscode-search-provider.py

# Search provider definition
install -Dm 0644 conf/org.gnome.Vscode.SearchProvider.ini "${DATADIR}"/gnome-shell/search-providers/org.gnome.Vscode.SearchProvider.ini

# Desktop file (for having an icon)
install -Dm 0644 conf/org.gnome.Vscode.SearchProvider.desktop "${DATADIR}"/applications/org.gnome.Vscode.SearchProvider.desktop

# DBus configuration (no-systemd)
install -Dm 0644 conf/org.gnome.Vscode.SearchProvider.service.dbus "${DATADIR}"/dbus-1/services/org.gnome.Vscode.SearchProvider.service
