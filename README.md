# Azure Automation Scripts

This repository contains PowerShell automation scripts for deploying and managing resources in Microsoft Azure.

## 🚀 Script: `Create-ResourceGroup.ps1`

Creates a new Azure Resource Group using PowerShell and the `Az` module.

---

### 🔧 What It Does

- Logs into Azure using device authentication
- Defines a resource group name and region
- Creates the resource group with verbose output

---

### 📦 Requirements

- [PowerShell 7+](https://learn.microsoft.com/en-us/powershell/)
- Azure `Az` module
- Azure subscription (Free Tier is perfect for testing)

---

### 🧪 How to Run

```powershell
# Connect to Azure
Connect-AzAccount -UseDeviceAuthentication

# Run the script
.\Create-ResourceGroup.ps1