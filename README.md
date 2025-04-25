# Azure Automation Scripts

This repository contains PowerShell automation scripts for deploying and managing resources in Microsoft Azure.

## 🚀 Script: `Create-ResourceGroup.ps1`

Creates a new Azure Resource Group using PowerShell and the `Az` module.

---

## 📜 Script Index

| Script Name                           | Purpose                                           |
|--------------------------------------|---------------------------------------------------|
| `Create-ResourceGroup.ps1`           | Creates a new Azure Resource Group                |
| `Check-And-Create-RG.ps1`            | Checks if an RG exists, creates it if not        |
| `Check-RG-And-Deploy-VM.ps1`         | Deploys a VM if credits are enough               |
| `Check-RG-And-Deploy-VM-VARIANT.ps1` | Same as above with customizable input            |
| `Check-RG-Deploy-Interactive.ps1`    | Interactive prompts for RG + region + credits    |

---

## 🔧 What It Does

- Logs into Azure using device authentication
- Defines a resource group name and region
- Checks for resource group existence (some scripts)
- Validates user-defined fake credits (for learning)
- Deploys a VM if credits are sufficient
- Provides verbose feedback throughout

---

## 📦 Requirements

- [PowerShell 7+](https://learn.microsoft.com/en-us/powershell/)
- Azure `Az` module (`Install-Module -Name Az -Scope CurrentUser`)
- Azure subscription (Free Tier is perfect for testing)

---

## 🧪 How to Run

```powershell
# Connect to Azure
Connect-AzAccount -UseDeviceAuthentication

# Run a script
.\Create-ResourceGroup.ps1

For other scripts, just replace the filename accordingly.

✍️ Customize It
You can modify:

$resourceGroupName – the name of the RG to create or check

$location – the Azure region (like westeurope or northeurope)

$credits – to simulate credit validation logic for testing

🧬 Clone This Repository

git clone https://github.com/fitimhajdini/azure-automation.git
cd azure-automation

✅ Status
All scripts tested on PowerShell 7+ with the Az module.

Made by @fitimhajdini