$project = "F:\CERTIFICACAO\lpic-1-101500\"
Set-Location $project
$out = git status
$check = $null
$check = $out | Select-String -Pattern "untracked"
If ($null -ne $check ) {
    Write-Host -ForegroundColor Red "Uncommitted files found"
    $commit = Read-Host -Prompt "Please, enter comment for commit"
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