## 📦 gitsqlite Release
              
A Git clean/smudge/diff filter for storing SQLite databases in plain text SQL, enabling meaningful diffs and merges. There are several benefits over using sqlite3 .dump directly:
- byte-by-byte equal across windows/linux/mac
- Consistent float rounding (deterministic dumps).
- Strip SQLite’s internal/system tables from dumps.
- Temp-file I/O for robustness (vs fragile pipes).
- handles broken pipes with Git Gui Clients
- easier to deploy and maintain in an organization - eg: winget for windows
- Optional: logging for diagnostics

### Quick Start
1. Download the appropriate binary for your platform and make sure it is reachable from Git Bash (Path)
    ```bash
    # Example for Windows
    winget install danielsiegl.gitsqlite
    # curl -L -o gitsqlite.exe https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-windows-amd64.exe
    ```
2. Install SQLite 3: `winget install SQLite.SQLite` (Windows) or `sudo apt install sqlite3` (Linux)
3. Configure Git filters:
    ```bash
    echo '*.db filter=gitsqlite' >> .gitattributes
    # echo '*.db diff=gitsqlite' >> .gitattributes
    git config filter.gitsqlite.clean "gitsqlite clean"
    git config filter.gitsqlite.smudge "gitsqlite smudge"
    # git config diff.gitsqlite.textconv "gitsqlite diff"
    ```

### Available Binaries
- **Windows**: `gitsqlite-windows-amd64.exe`, `gitsqlite-windows-arm64.exe`
- **Linux**: `gitsqlite-linux-amd64`, `gitsqlite-linux-arm64`
- **macOS**: `gitsqlite-macos-arm64`

📖 **Full documentation**: [README.md](https://github.com/danielsiegl/gitsqlite/blob/main/README.md)       