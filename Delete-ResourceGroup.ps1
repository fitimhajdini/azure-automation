# Ask the user for the name of the resource group to delete
$rgName = Read-Host "Enter the name ofthe Resource Group to delete"

# Check if the resource group exists
$rg = Get-AzResourceGroup -Name $rgName -ErrorAction SilentlyContinue

if ($null -eq $rg) {
    Write-Output "❌ Resource group '$rgName' not found."
} else {
    Write-Output "✅ Resource group '$rgName' exists."
}

$confirm = Read-Host "Are you sure you want to delete '$rgName'? Type YES to confirm"

if ($confirm -eq "YES") {
    Remove-AzResourceGroup -Name $rgName -Force
    Write-Output "Resource Group '$rgName' has been deleted."
} else {
    Write-Output "Deletion cancelled."
}