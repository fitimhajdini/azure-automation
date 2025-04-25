# Connect To Azure
Connect-AzAccount -UseDeviceAuthentication


# Variables
$resourceGroupName = "Learn-RG"
$location = "westeurope"
$credits = 120 # Stimulate available credits
$requiredCredits = 100

# Check if resource group exists
$rg = Get-AzResourceGroup -Name $resourceGroupName -ErrorAction SilentlyContinue

if (-not $rg) {
    Write-Output "Creating resource group..."
    New-AzResourceGroup -Name $resourceGroupName -Location $location
} else {
    Write-Output "Resource group '$resourceGroupName' already exists in $location."
}

# Check if we have enough credits to deploy a VM

if ($credits -ge $requiredCredits) {
    Write-Output "You have enough credits to deploy the VM"
    # Stimulate deployment
    Write-Output "Deploying VM in $location..."
} else {
    Write-Output "Not enough credits to deploy. You have only $credits credits, need $requiredCredits. "
}