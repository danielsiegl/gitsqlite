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

```bash
# Install globally (Windows via winget)
winget install danielsiegl.gitsqlite

# or build from source
go install github.com/danielsiegl/gitsqlite@latest

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

- **Windows**:  
  ```bash
  winget install danielsiegl.gitsqlite
  ```
- **macOS (Homebrew)**:  
  ```bash
  brew install gitsqlite
  ```
- **Linux (Go)**:  
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

### Example clean/smudge config

```bash
git config filter.gitsqlite.clean "gitsqlite clean"
git config filter.gitsqlite.smudge "gitsqlite smudge"
```

## Examples

- [Example SQL output from a simple SQLite DB](examples.md)

## Known Issues / Limitations

- Line ending differences between OSes may cause minor diff noise.
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
- Fixed cross-platform compatibility issues
- Added test scripts and example docs

## License

[BSD-2-Clause](LICENSE) © Daniel Siegl
