# Step 1: Get all RGs
$allRGs = Get-AzResourceGroup

# Step 2: Loop through each RG
foreach ($rg in $allRGs) {
    $name = $rg.ResourceGroupName
    $location = $rg.Location
    $state = $rg.ProvisioningState

    # Step 3: Conditional output formatting
    if ($state -eq "Succeeded") {
        Write-Output "Name: '$rg', Location: '$location' State: '$state'" -ForegroundColor green
        # Print in green
    } elseif ($state -eq "Updating") {
        Write-Output "Name: '$rg', Location: '$location' State: '$state'" -ForegroundColor yellow
        # Print in yellow
    } elseif ($state -eq "Failed") {
        Write-Output "Name: '$rg', Location: '$location' State: '$state'" -ForegroundColor red
        # Print in red
    } else {
        Write-Output "No match was found." -ForegroundColor neutral
        # Print neutral
    }
}
