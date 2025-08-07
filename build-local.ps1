# Quick local build script with version information

Write-Host "Building gitsqlite locally with version information..." -ForegroundColor Green

# Get Git information
try {
    $gitCommit = git rev-parse HEAD
    $gitCommitShort = git rev-parse --short HEAD
    $gitBranch = git rev-parse --abbrev-ref HEAD
    $buildTime = Get-Date -Format "yyyy-MM-dd HH:mm:ss UTC"
    $version = "1.0.0-$gitCommitShort"
    
    Write-Host "Git commit: $gitCommitShort ($gitCommit)" -ForegroundColor Cyan
    Write-Host "Git branch: $gitBranch" -ForegroundColor Cyan
    Write-Host "Build time: $buildTime" -ForegroundColor Cyan
    Write-Host "Version: $version" -ForegroundColor Cyan
    
} catch {
    Write-Host "Warning: Could not get Git information, using defaults" -ForegroundColor Yellow
    $gitCommit = "unknown"
    $gitBranch = "unknown"
    $buildTime = Get-Date -Format "yyyy-MM-dd HH:mm:ss UTC"
    $version = "dev"
}

# Build with ldflags to set version information
$ldflags = "-X main.GitCommit=$gitCommit -X main.GitBranch=$gitBranch -X `"main.BuildTime=$buildTime`" -X main.Version=$version"

Write-Host ""
Write-Host "Building executable..." -ForegroundColor Green
go build -ldflags $ldflags -o gitsqlite.exe

if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Build successful!" -ForegroundColor Green
    Write-Host ""
    Write-Host "Testing version output:" -ForegroundColor Yellow
    .\gitsqlite.exe version
} else {
    Write-Host "✗ Build failed!" -ForegroundColor Red
    exit 1
}
