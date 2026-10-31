# Sync automatique m3a GitHub: pull -> commit -> push
$repo = $PSScriptRoot
$log = Join-Path $repo "sync.log"
Set-Location $repo

function Log($msg) {
    "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')  $msg" | Out-File -FilePath $log -Append -Encoding utf8
}

# Ila kan chi merge/rebase m3elle9, ma ndirou walou bach ma nkhrbouch
if ((Test-Path ".git\MERGE_HEAD") -or (Test-Path ".git\rebase-merge") -or (Test-Path ".git\rebase-apply")) {
    Log "CONFLICT: kayn merge/rebase m3elle9, 7ellou b yeddik."
    exit 1
}

git add -A
git diff --cached --quiet
if ($LASTEXITCODE -ne 0) {
    git commit -q -m "auto-sync $env:COMPUTERNAME $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
}

git pull --rebase -q origin main
if ($LASTEXITCODE -ne 0) {
    git rebase --abort 2>$null
    Log "CONFLICT: pull fshel, nfs l-fichier tbeddel f 2 PC. 7ellou b yeddik."
    exit 1
}

git push -q origin main
if ($LASTEXITCODE -ne 0) { Log "push fshel (internet?)" ; exit 1 }
