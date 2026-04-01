$ErrorActionPreference = 'Stop'
Set-Location D:\team-magnificent-training

# Copy latest files from outputs
$files = @(
    'product-warm-market.html',
    'tm-glp3-video-share.html',
    '72hour-mission.html'
)

foreach ($f in $files) {
    $src = "C:\Users\email\Downloads\$f"
    if (Test-Path $src) {
        Copy-Item $src -Destination "D:\team-magnificent-training\$f" -Force
        Write-Host "Copied: $f" -ForegroundColor Cyan
    } else {
        Write-Host "Not in Downloads: $f" -ForegroundColor Yellow
    }
}

git add product-warm-market.html tm-glp3-video-share.html 72hour-mission.html welcome-letter.html
git status
git commit -m "Add presentation tools: GLP THREE video share, warm market form, 72-hour mission"
git push origin main
Write-Host 'PUSHED' -ForegroundColor Green
