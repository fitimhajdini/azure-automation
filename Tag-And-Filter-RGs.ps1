# Get all Resource Groups
$allRGs = Get-AzResourceGroup

# Tag RGs that don’t have Project tag
foreach ($rg in $allRGs) {
    $rgName = $rg.ResourceGroupName

    if (-not $rg.Tags -or -not $rg.Tags.ContainsKey("Project")) {
        Write-Host "Tagging RG '$rgName' with Project=Azure101..." -ForegroundColor Yellow
        Set-AzResourceGroup -Name $rgName -Tag @{ Project = "Azure101" }
    }
}

# List RGs that have the tag
Write-Host "`n✅ Tagged Resource Groups:" -ForegroundColor Green

$taggedRGs = $allRGs | Where-Object { $_.Tags -and $_.Tags["Project"] -eq "Azure101" }

foreach ($rg in $taggedRGs) {
    Write-Host "RG: $($rg.ResourceGroupName) | Location: $($rg.Location)" -ForegroundColor Cyan
}
