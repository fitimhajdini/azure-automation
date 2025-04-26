# Azure Automation Scripts

This repository contains PowerShell automation scripts for deploying and managing resources in Microsoft Azure.  
These scripts are built for hands-on learning and real-world automation — perfect for AZ-104 prep and beyond.

---

## 📜 Script Index

| Script Name                           | Purpose                                           |
|--------------------------------------|---------------------------------------------------|
| `Create-ResourceGroup.ps1`           | Creates a new Azure Resource Group                |
| `Check-And-Create-RG.ps1`            | Checks if an RG exists, creates it if not        |
| `Check-RG-And-Deploy-VM.ps1`         | Deploys a VM if credits are enough               |
| `Check-RG-And-Deploy-VM-VARIANT.ps1` | Same as above with customizable input            |
| `Check-RG-Deploy-Interactive.ps1`    | Interactive prompts for RG + region + credits    |
| `Delete-ResourceGroup.ps1`           | Deletes an existing RG safely with confirmation  |

---

## 🚀 What Each Script Does

### `Create-ResourceGroup.ps1`
Creates a new Azure Resource Group using PowerShell and the `Az` module.

### `Check-And-Create-RG.ps1`
Checks if a given resource group exists. If not, creates it in the specified location.

### `Check-RG-And-Deploy-VM.ps1`
Deploys a VM *only* if the user has sufficient fake "credits" (for simulation/training).

### `Check-RG-And-Deploy-VM-VARIANT.ps1`
Same logic as above but allows you to easily customize RG name, location, and credit threshold.

### `Check-RG-Deploy-Interactive.ps1`
Interactive script that asks the user for RG name, location, and available credits, then decides whether to deploy a VM.

### `Delete-ResourceGroup.ps1`
Deletes a specified resource group — but only if it exists and the user confirms the deletion.

---

## 🔧 Features & Learning Highlights

- Logs into Azure using device authentication
- Creates, checks, or deletes resource groups
- Simulates conditional logic for credits and deployments
- Uses `Read-Host` for input and confirmations
- Provides real-time feedback with emojis and clear output
- Modular, customizable PowerShell scripts for repeat use

---

## 📦 Requirements

- [PowerShell 7+](https://learn.microsoft.com/en-us/powershell/)
- Azure `Az` module  
  👉 Install with:  
  ```powershell
  Install-Module -Name Az -Scope CurrentUser
  ```
- Azure subscription (Free Tier is perfect for testing)

---

## 🧪 How to Run a Script

1. **Login to Azure**  
   ```powershell
   Connect-AzAccount -UseDeviceAuthentication
   ```

2. **Run any script**  
   Example:  
   ```powershell
   .\Create-ResourceGroup.ps1
   ```

3. **Interactive scripts** will guide you with prompts.

---

## ✍️ Customize These Scripts

You can edit the following variables in most scripts:

- `$resourceGroupName` – Name of the resource group
- `$location` – Azure region (e.g., `westeurope`, `northeurope`)
- `$credits` – Simulated value to test conditional deployments

---

## 🧹 Example: `Delete-ResourceGroup.ps1`

Safely deletes a resource group after confirming it exists and asking the user to confirm.

```powershell
# Example usage:
.\Delete-ResourceGroup.ps1
```

---

## 🧬 Clone This Repository

```bash
git clone https://github.com/fitimhajdini/azure-automation.git
cd azure-automation
```

---

## ✅ Status

All scripts are tested and working on:

- **PowerShell 7+**
- **Az module installed**
- **Azure Free Tier subscription**

Scripts are actively maintained and organized for learning, automation, and scripting mastery.

---

## 👨‍💻 Author

Made with PowerShell by [@fitimhajdini](https://github.com/fitimhajdini)  