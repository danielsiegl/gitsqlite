package version

// These are intended to be overridden via -ldflags at build time.
// Example:
//   go build -ldflags "\
//     -X 'github.com/danielsiegl/gitsqlite/internal/version.Version=1.0.0' \
//     -X 'github.com/danielsiegl/gitsqlite/internal/version.GitCommit=$(git rev-parse --short HEAD)' \
//     -X 'github.com/danielsiegl/gitsqlite/internal/version.GitBranch=$(git rev-parse --abbrev-ref HEAD)' \
//     -X 'github.com/danielsiegl/gitsqlite/internal/version.BuildTime=$(date -u +%Y-%m-%dT%H:%M:%SZ)'" \
//     .
var (
	Version   = "dev"
	GitCommit = "unknown"
	GitBranch = "unknown"
	BuildTime = "unknown"
)
