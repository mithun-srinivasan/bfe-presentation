$basePath = "c:\Users\JAGTHIS\Desktop\BFE Presentation"
$baseUrl = "https://cdn.jsdelivr.net/npm/reveal.js@4.5.0"

# Create directory if it doesn't exist
$libsPath = "$basePath\libs\reveal.js"

# Files to download: @{source => destination}
$files = @{
    "$baseUrl/dist/reveal.js" = "$libsPath\dist\reveal.js"
    "$baseUrl/dist/reveal.css" = "$libsPath\dist\reveal.css"
    "$baseUrl/dist/theme/white.css" = "$libsPath\dist\theme\white.css"
    "$baseUrl/plugin/highlight/highlight.js" = "$libsPath\plugin\highlight\highlight.js"
    "$baseUrl/plugin/highlight/monokai.css" = "$libsPath\plugin\highlight\monokai.css"
    "$baseUrl/plugin/notes/notes.js" = "$libsPath\plugin\notes\notes.js"
    "$baseUrl/plugin/zoom/zoom.js" = "$libsPath\plugin\zoom\zoom.js"
    "$baseUrl/dist/print/pdf.css" = "$libsPath\dist\print\pdf.css"
}

# Download each file
foreach ($url in $files.Keys) {
    $dest = $files[$url]
    Write-Host "Downloading: $url"
    try {
        Invoke-WebRequest -Uri $url -OutFile $dest
        Write-Host "✓ Saved to: $dest"
    } catch {
        Write-Host "✗ Failed to download: $url"
        Write-Host "Error: $_"
    }
}

# Download external images
Write-Host "`nDownloading external images..."

$imageUrl = "https://upload.wikimedia.org/wikipedia/commons/6/63/Typical_cnn.png"
$imageDest = "$basePath\images\cnn-architecture.png"

try {
    Invoke-WebRequest -Uri $imageUrl -OutFile $imageDest
    Write-Host "✓ Downloaded CNN image to: $imageDest"
} catch {
    Write-Host "✗ Failed to download CNN image"
    Write-Host "Error: $_"
}

Write-Host "`n✓ All files downloaded successfully!"
