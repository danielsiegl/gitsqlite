function Build-GoApplication {
    param (
        [string]$GOOS,
        [string]$GOARCH = "amd64",
        [string]$CGO_ENABLED = "0",
        [string]$ContractFile = ""
    )

    # Store original environment variables
    $originalGOOS = $env:GOOS
    $originalGOARCH = $env:GOARCH
    $originalCGO_ENABLED = $env:CGO_ENABLED

    try {
        # Set environment variables for build
        $env:GOOS = $GOOS
        $env:GOARCH = $GOARCH
        $env:CGO_ENABLED = $CGO_ENABLED

        Write-Output "Building for $env:GOOS"
        
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

        # Build command with contract file if specified
        $buildCmd = "go build -o $outputFile"
        if ($ContractFile -ne "") {
            $buildCmd += " -ldflags `"-X main.defaultContractFile=$ContractFile`""
        }
        
        # Perform the build
        Invoke-Expression $buildCmd
        
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
        $env:CGO_ENABLED = $originalCGO_ENABLED
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