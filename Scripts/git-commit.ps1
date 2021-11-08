$project = "F:\CERTIFICACAO\lpic-1-101500\"
Set-Location $project
git status
$out = git status
$check = $null
$check = $out | Select-String -Pattern "untracked", "modified"
If ($null -ne $check ) {
    Write-Host -ForegroundColor Red "Uncommitted files found"
    $commit = "feat: Add new examples"
    git add .
    git commit -m $commit
    git push origin main
    $check = $out | Select-String -Pattern "untracked"
    $out = git status
    $check = $null
    $check = $out | Select-String -Pattern "untracked"
    If ($null -ne $check ) {
        Write-Host -ForegroundColor Red "Commit failed!!!"
    }
    Else {
        Write-Host -ForegroundColor Green "Commit Success!!!"
    }
}