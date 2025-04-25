# Login to Azure
Connect-AzAccount -UseDeviceAuthentication

# 🧑‍💻 User Inputs
$resourceGroupName = Read-Host "Enter the name of the Resource Group"
$location = Read-Host "Enter the Azure region (e.g., westeurope, northeurope)"
$credits = Read-Host "How many credits do you currently have?"
$credits = [int]$credits  # Convert input to integer

$requiredCredits = 100

# 🧠 Check for existing Resource Group
$rg = Get-AzResourceGroup -Name $resourceGroupName -ErrorAction SilentlyContinue

if (-not $rg) {
    Write-Output "Resource group '$resourceGroupName' not found. Creating in $location..."
    New-AzResourceGroup -Name $resourceGroupName -Location $location
} else {
    Write-Output "Resource group '$resourceGroupName' already exists in $location."
}

# 💳 Credit Check Logic
if ($credits -ge $requiredCredits) {
    Write-Output "✅ You have enough credits to deploy the VM."
    Write-Output "Deploying VM in $location..."
    # Simulated VM deployment goes here
} else {
    Write-Output "❌ Not enough credits. You have $credits, need $requiredCredits."
}