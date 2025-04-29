# Step 1: Ask user for RG name
$rgName = Read-Host "Enter the Resource Group name"

# Step 2: Check if RG exists
$rg = Get-AzResourceGroup -Name $rgName -ErrorAction SilentlyContinue

# Step 3: Conditional check
if ($rg) {
    $location = $rg.Location
    $state = $rg.ProvisioningState
    Write-Output "✅ RG '$rgName' is in '$location' and its state is '$state'."
} else {
    Write-Output "⚠️ RG '$rgName' does not exist."
}
