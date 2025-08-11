#!/usr/bin/env bash
set -e

# Target bin directory
BINDIR="$HOME/bin"
mkdir -p "$BINDIR"

# Ensure ~/bin is on PATH
if ! echo "$PATH" | grep -q "$BINDIR"; then
  echo 'export PATH="$HOME/bin:$PATH"' >> "$HOME/.profile"
  export PATH="$HOME/bin:$PATH"
  echo "Added $BINDIR to PATH. Restart your terminal or run: source ~/.profile"
fi

# Install SQLite 3 if not present
if ! command -v sqlite3 >/dev/null 2>&1; then
  echo "Installing sqlite3 via apt..."
  sudo apt-get update && sudo apt-get install -y sqlite3
else
  echo "sqlite3 is already installed."
fi

# Download latest gitsqlite
GITSQLITE_URL="https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-linux-amd64"
GITSQLITE_BIN="$BINDIR/gitsqlite"
echo "Downloading latest gitsqlite..."
curl -L "$GITSQLITE_URL" -o "$GITSQLITE_BIN"
chmod +x "$GITSQLITE_BIN"

echo "gitsqlite installed at $GITSQLITE_BIN"
echo "\nInstallation complete. Open a new terminal to use 'sqlite3' and 'gitsqlite' from any location."
