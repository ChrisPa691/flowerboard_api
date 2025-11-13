Param(
    [string]$remoteUrl = ""
)

Write-Host "Running git bootstrap script..."

if (-not (Test-Path -Path ".git")) {
    git init
    git checkout -b main
} else {
    git checkout main -ErrorAction SilentlyContinue
}

git add -A
try {
    git commit -m "chore: initial scaffold" -q
} catch {
    Write-Host "No changes to commit or commit failed: $_"
}

if ($remoteUrl -ne "") {
    try {
        git remote add origin $remoteUrl -ErrorAction SilentlyContinue
    } catch {
        Write-Host "Remote add may have failed or already exists: $_"
    }
    git push -u origin main
} else {
    Write-Host "No remote provided. To push manually run:`n  git remote add origin <url>`n  git push -u origin main"
}

Write-Host "Done."
