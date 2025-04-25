$resourceGroupName = "Learn-RG"
$location = "westeurope"
$cleanup = $false #Change to $true to test cleanup mode

# Check for existing RG
    $rg = Get-AzResourceGroup -Name $resourceGroupName -ErrorAction SilentlyContinue

    if (-not $rg){
        Write-Output "Resource group not found, Creating..."
        New-AzResourceGroup -Name $resourceGroupName -Location $location -Tag @{ environment = "dev"} -Verbose
    } else {
        Write-Output "Resource group '$resourceGroupName' already exists in $($rg.Location)."
    }

# Optional: Cleanup mode

    if ($cleanup -eq $true){
        Write-Output "Cleanup mode enabled. Deleting the resource group..."
        Remove-AzResourceGroup -Name $resourceGroupName -Force -Verbose
    }