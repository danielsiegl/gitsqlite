# gitsqlite build script
# this script is used by main.yml on GitHub Actions
# It also can be used locally to build the application for all platforms

function Build-GoApplication {
    param (
        [string]$GOOS,
        [string]$GOARCH = "amd64"
    )

    # Store original environment variables
    $originalGOOS = $env:GOOS
    $originalGOARCH = $env:GOARCH

    try {
        # Set environment variables for build
        $env:GOOS = $GOOS
        $env:GOARCH = $GOARCH

        Write-Output "Building for $env:GOOS"
        
        # Get Git information for version
        try {
            $gitCommit = git rev-parse HEAD
            $gitCommitShort = git rev-parse --short HEAD
            $gitBranch = git rev-parse --abbrev-ref HEAD
            $version = "dev-$gitCommitShort"
        } catch {
            Write-Warning "Could not get Git information, using defaults"
            $gitCommit = "unknown"
            $gitBranch = "unknown"
            $version = "dev"
        }
        
        # Determine output filename based on OS
        $outputFile = if ($GOOS -eq "windows") {
            "gitsqlite-$GOOS-$GOARCH.exe"
        } elseif ($GOOS -eq "darwin") 
        {
            "gitsqlite-macos-$GOARCH"
        }
        else {
            "gitsqlite-$GOOS-$GOARCH"
        }

        # Get build time in a format without spaces to avoid escaping issues
        $buildTime = (Get-Date).ToUniversalTime().ToString("yyyy-MM-ddTHH:mm:ssZ")
        
        # Build ldflags with version information
        $ldflagsString = "-X main.GitCommit=$gitCommit -X main.GitBranch=$gitBranch -X main.BuildTime=$buildTime -X main.Version=$version"
        
        
        Write-Output "Executing: go build -ldflags `"$ldflagsString`" -o `"$outputFile`""
        & go build -ldflags $ldflagsString -o $outputFile
        
        if ($LASTEXITCODE -ne 0) {
            throw "Build failed with exit code $LASTEXITCODE"
        }
        
        # Create bin directory if it doesn't exist
        $binDir = "bin"
        if (-not (Test-Path -Path $binDir)) {
            New-Item -ItemType Directory -Path $binDir | Out-Null
            Write-Output "Created bin directory"
        }
        
        # Copy the built file to the bin directory
        Copy-Item -Path $outputFile -Destination $binDir -Force
        Write-Output "Copied to bin directory: '$binDir/$outputFile'"
        
        # Clean up the original file
        Remove-Item -Path $outputFile -Force
        Write-Output "Cleaned up original build file"
        
        Write-Output "$GOOS build complete"
    }
    finally {
        # Restore original environment variables
        $env:GOOS = $originalGOOS
        $env:GOARCH = $originalGOARCH
    }
}


# host computer
# Determine OS and Architecture
$osPlatform = [System.Runtime.InteropServices.RuntimeInformation]::OSDescription
$architecture = [System.Runtime.InteropServices.RuntimeInformation]::OSArchitecture

Write-Output "Building on:"
Write-Output "OS Platform: $osPlatform"
Write-Output "Architecture: $architecture"

# Build for Linux
Build-GoApplication -GOOS "linux"
Build-GoApplication -GOOS "linux" -GOARCH "arm64"

# Build for Windows
Build-GoApplication -GOOS "windows"
Build-GoApplication -GOOS "windows" -GOARCH "arm64"

# Build for macOS on M1,M2,M3,..
Build-GoApplication -GOOS "darwin"
Build-GoApplication -GOOS "darwin" -GOARCH "arm64"

Write-Output "All builds complete copied to bin directory"