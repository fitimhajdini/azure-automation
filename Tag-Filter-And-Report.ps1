# Step 1: Fetch all Resource Groups
$allRgs = Get-AzResourceGroup

#Step 2: Filter RGs with tag Project=Azure101
$taggedRgs = $allRgs | Where-Object {
    $_.Tags -and $_.Tags["Project"] -eq "Azure101"
}

#Step 3: Output matching RGs
if ($taggedRgs.count -gt 0) {
    Write-Host "`n✅ Resource Groups with Project=Azure101:`n" -ForegroundColor Green
    foreach ($rg in $taggedRgs) {
        Write-Host "Name: $($rg.AzResourceGroupName) | Location: $($rg.Location)" -ForegroundColor Cyan
    }
} else {
    Write-Host "❌ No Resource Groups found with tag Project-Azure101" -ForegroundColor Yellow
}