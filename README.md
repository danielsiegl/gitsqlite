# gitsqlite

[![License: BSD-2](https://img.shields.io/badge/license-BSD--2-blue.svg)](LICENSE)
[![Go Version](https://img.shields.io/github/go-mod/go-version/danielsiegl/gitsqlite)](go.mod)
[![Release](https://img.shields.io/github/v/release/danielsiegl/gitsqlite)](https://github.com/danielsiegl/gitsqlite/releases)
[![Downloads](https://img.shields.io/github/downloads/danielsiegl/gitsqlite/total.svg)](https://github.com/danielsiegl/gitsqlite/releases)

A Git clean/smudge filter for storing SQLite databases in plain text SQL, enabling meaningful diffs and merges.

## Why

Binary SQLite databases are opaque to Git – you can’t easily see changes or resolve conflicts.  
**gitsqlite** automatically converts between `.sqlite` and SQL text on checkout and commit, letting you version SQLite data just like source code.

## Quick Start

Windows
```bash
# Install globally (download latest release)
# Windows (PowerShell)
curl -L -o gitsqlite.exe https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-windows-amd64.exe
# Windows ARM64
# curl -L -o gitsqlite.exe https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-windows-arm64.exe
```

```bash
# Linux/macOS (bash)
curl -L -o gitsqlite https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-linux-amd64
chmod +x gitsqlite
sudo mv gitsqlite /usr/local/bin/

# Alternative with wget
wget -O gitsqlite https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-linux-amd64
chmod +x gitsqlite
sudo mv gitsqlite /usr/local/bin/
```

```bash
# or build from source
go install github.com/danielsiegl/gitsqlite@latest
```

```bash
# Tell Git to use gitsqlite for *.sqlite files
echo '*.sqlite filter=gitsqlite diff=gitsqlite' >> .gitattributes
git config --global filter.gitsqlite.clean "gitsqlite clean"
git config --global filter.gitsqlite.smudge "gitsqlite smudge"
```

Now commit a SQLite file:

```bash
git add mydb.sqlite
git commit -m "Versioned database in SQL"
```

Git will store the text representation, so you can diff and merge normally.

## Installation

- **Windows (PowerShell)**:  
  ```bash
  # AMD64 (Intel/AMD 64-bit)
  curl -L -o gitsqlite.exe https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-windows-amd64.exe
  # ARM64 (Windows on ARM)
  # curl -L -o gitsqlite.exe https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-windows-arm64.exe
  
  # Move to a directory in your PATH, e.g.:
  # Move-Item gitsqlite.exe C:\Windows\System32\
  ```
- **Linux**:  
  ```bash
  # AMD64 (Intel/AMD 64-bit)
  curl -L -o gitsqlite https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-linux-amd64
  # ARM64 (Apple Silicon, ARM servers)
  # curl -L -o gitsqlite https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-linux-arm64
  
  chmod +x gitsqlite
  sudo mv gitsqlite /usr/local/bin/
  ```
- **macOS**:  
  ```bash
  # Intel Macs
  curl -L -o gitsqlite https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-macos-amd64
  # Apple Silicon (M1/M2/M3)
  # curl -L -o gitsqlite https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-macos-arm64
  
  chmod +x gitsqlite
  sudo mv gitsqlite /usr/local/bin/
  ```
- **From Source (Go)**:  
  ```bash
  go install github.com/danielsiegl/gitsqlite@latest
  ```

Requires:
- Go ≥ 1.21 (to build from source)
- `sqlite3` CLI available in `PATH` (or specify with `-sqlite` flag)

## Usage

```bash
Usage:
  gitsqlite clean [-sqlite <path>] [-tmpdir <dir>]
  gitsqlite smudge [-sqlite <path>] [-tmpdir <dir>]

Flags:
  -sqlite string   path to sqlite3 binary (default: sqlite3 in PATH)
  -tmpdir string   directory for temporary files (default: system temp dir)
```

## CLI Parameters

### Operations
- **`clean`** - Convert binary SQLite database to SQL dump (reads from stdin, writes to stdout)
- **`smudge`** - Convert SQL dump to binary SQLite database (reads from stdin, writes to stdout)

### Options
- **`-sqlite <path>`** - Path to SQLite executable (default: "sqlite3")
  ```bash
  gitsqlite -sqlite /usr/local/bin/sqlite3 clean < database.db
  ```
- **`-log`** - Enable logging to file in current directory
  ```bash
  gitsqlite -log clean < database.db > database.sql
  ```
- **`-log-dir <directory>`** - Log to specified directory instead of current directory
  ```bash
  gitsqlite -log-dir ./logs clean < database.db > database.sql
  ```
- **`-version`** - Show version information
  ```bash
  gitsqlite -version
  ```
- **`-sqlite-version`** - Check if SQLite is available and show its version
  ```bash
  gitsqlite -sqlite-version
  ```
- **`-help`** - Show help information
  ```bash
  gitsqlite -help
  ```

### Usage Examples

```bash
# Basic usage with Git filters
echo '*.sqlite filter=gitsqlite diff=gitsqlite' >> .gitattributes
git config filter.gitsqlite.clean "gitsqlite clean"
git config filter.gitsqlite.smudge "gitsqlite smudge"

# Manual conversion with logging
gitsqlite -log clean < database.db > database.sql
gitsqlite -log smudge < database.sql > database.db

# Using custom SQLite path
gitsqlite -sqlite /opt/sqlite/bin/sqlite3 clean < database.db

# Check SQLite availability
gitsqlite -sqlite-version
```

## Examples

- [Example SQL output from a simple SQLite DB](examples.md)

## ⚠️ Important Notice: Database Merging

**Merging SQLite databases is complex and risky for many applications.** While gitsqlite enables text-based diffs and basic merging, **domain-specific databases often require specialized tools for safe merging**.

### When NOT to rely on automatic merging:

- **Sparx Enterprise Architect (.qeax)** databases - Use [LieberLieber LemonTree](https://www.lieberlieber.com/lemontree/) for proper model merging
- **Application-specific databases** with complex schemas, constraints, or business logic
- **Databases with foreign key relationships** where merge conflicts could break referential integrity
- **Production databases** where data corruption could have serious consequences

### Recommended workflow:

1. **Use gitsqlite for visibility** - See what changed in your database commits
2. **Use specialized tools for merging** - Domain experts tools understand your data structure
3. **Manual conflict resolution** - Review and resolve conflicts using appropriate tools
4. **Test thoroughly** - Validate database integrity after any merge operation

**gitsqlite is excellent for tracking changes and simple scenarios, but consider it a foundation tool rather than a complete solution for complex database merging.**

## Known Issues / Limitations

- `sqlite_sequence` table content can change outside of your edits.
- Large databases may be slow to convert.
- Temporary files are written to the system temp directory.

## Uninstall

To remove the filter globally:

```bash
git config --global --unset-all filter.gitsqlite.clean
git config --global --unset-all filter.gitsqlite.smudge
```

Remove the `.gitattributes` entry from your repos.

## Contributing

Pull requests and issues are welcome.

- Run tests before submitting:
  ```bash
  go test ./...
  # or
  ./scripts/test_roundtrip.ps1
  ```
- Keep PRs focused on one change.
- Follow Go code conventions.
- See [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) (optional file).

## Versioning & Changelog

We follow [Semantic Versioning](https://semver.org/).  
Changes are documented in [Releases](https://github.com/danielsiegl/gitsqlite/releases).

## Credits

Forked from [quarnster/gitsqlite](https://github.com/quarnster/gitsqlite) with improvements:
- Updated build and installation instructions
- Made to handle more scenarios
- Fixed cross-platform compatibility issues
- Added test scripts and example docs
- Line ending differences between OSes should not cause diff noise.
- Tries to detect Sqlite 

## License

[BSD-2-Clause](LICENSE) © Daniel Siegl
