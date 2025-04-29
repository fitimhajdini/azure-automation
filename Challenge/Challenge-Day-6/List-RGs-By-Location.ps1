# Step 1: Ask user for location
$locationFilter = Read-Host "Enter a location (e.g. westeurope)"

# Step 2: Get all resource groups
$allRGs = Get-AzResourceGroup

# Step 3: Filter by location and loop through results
$matchedRGs = $allRGs | Where-Object { $_.Location -eq $locationFilter }

if ($matchedRGs) {
    foreach ($rg in $matchedRGs) {
        Write-Host "✅ Found RG: '$($rg.ResourceGroupName)' in '$($rg.Location)'" -ForegroundColor Green
    }
} else {
    Write-Host "⚠️ No resource groups found in '$locationFilter'" -ForegroundColor Yellow
}
