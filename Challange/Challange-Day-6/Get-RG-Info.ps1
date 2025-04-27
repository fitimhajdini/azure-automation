# Step 1: Ask user for RG name
$rgName = Read-Host "Enter the Resource Group name"

# Step 2: Check if RG exists
$rg = Get-AzResourceGroup -Name $rgName -ErrorAction SilentlyContinue

# Step 3: Conditional check
if ($rg) { Write-Output ("RG 'rgName' is in '$Location' and its state is Succeeded.")
    # 🔧 Print location and provisioning state
    # Example: "RG 'dev-rg' is in westeurope and its state is Succeeded."
    # Fill this in:
    
} else { 
    Write-Output "RG doesn't exist"
    # 🔧 Show message that RG doesn't exist
}
