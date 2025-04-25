# Variables
$resourceGroupName = "Test-RG-2"
$location = "westeurope"
$credits = 120
$requiredCredits = 100

# Login (token saved if already logged in)
Connect-AzAccount -UseDeviceAuthentication

# Check if resource group exists
$rg = Get-AzResourceGroup -Name $resourceGroupName -ErrorAction SilentlyContinue

if (-not $rg) {
    Write-Output "Resource group not found, creating..."
    New-AzResourceGroup -Name $resourceGroupName -Location $location
} else {
    Write-Output "Resource group '$resourceGroupName' already exists in $location."
}

# Check credits
if ($credits -ge $requiredCredits) {
    Write-Output "✅ You have enough credits to deploy the VM."
    Write-Output "Deploying VM in $location..."
} else {
    Write-Output "❌ Not enough credits. You have $credits, need $requiredCredits."
}