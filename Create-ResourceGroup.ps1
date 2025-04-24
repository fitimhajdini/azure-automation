# Connect to Azure (token is saved, no need to re-log every time)

    Connect-AzAccount -UseDeviceAuthentication

# Variables

    $resourceGroupName = "Learn-RG"
    $location = "westeurope"

# Create the resource group

    New-AzResourceGroup -Name $resourceGroupName -Location $location

# Optional: wait and delete the group

    Start-Sleep -Seconds 10

# Remove -AzResourceGroup -Name $resourceGroupName -Force