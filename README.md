
# Azure Automation Scripts

Practical PowerShell automation scripts for Microsoft Azure resource management — perfect for AZ-104 prep and real-world automation.

---

## 📜 Script Index

| Script Name                             | Purpose                                                               |
|-----------------------------------------|-----------------------------------------------------------------------|
| `Create-ResourceGroup.ps1`              | Creates a new Azure Resource Group                                    |
| `Check-And-Create-RG.ps1`               | Checks if a RG exists and creates it if missing                      |
| `Check-RG-And-Deploy-VM.ps1`            | Deploys a VM if simulated "credits" are enough                       |
| `Check-RG-And-Deploy-VM-VARIANT.ps1`    | Same as above with customizable RG name, location, and credit input  |
| `Check-RG-Deploy-Interactive.ps1`       | Interactive prompts for RG creation and VM deployment decisions      |
| `Delete-ResourceGroup.ps1`              | Deletes an existing RG safely with confirmation                      |
| `Get-RGHealth.ps1`                      | Lists all RGs with location and provisioning state (color-coded)     |
| `Get-VMStatus.ps1`                      | Lists VMs across RGs with size and live power state (color-coded)     |
| `Count-VMs-PerRG.ps1`                   | Counts the number of VMs inside each Resource Group                  |

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

### `Get-RGHealth.ps1`
Lists all Resource Groups with their location and provisioning state. Color-coded output based on the RG status.

### `Get-VMStatus.ps1`
Lists all Virtual Machines across RGs with their names, VM sizes, and live power states. Includes color-coded output.

### `Count-VMs-PerRG.ps1`
Counts how many VMs exist inside each Resource Group and reports the result.

---

## 🔧 Features & Learning Highlights

- Logs into Azure using device authentication
- Creates, checks, or deletes Resource Groups
- Simulates conditional logic for credits and deployments
- Uses `Read-Host` for user input and confirmations
- Provides real-time, color-coded terminal output
- Monitors Resource Group health and Virtual Machine states
- Modular, reusable PowerShell script structure
- Designed for AZ-104 level administrative skills

---

## 📦 Requirements

- [PowerShell 7+](https://learn.microsoft.com/en-us/powershell/)
- Azure `Az` module  
  Install with:
  ```powershell
  Install-Module -Name Az -Scope CurrentUser
  ```
- Azure subscription (Free Tier is sufficient)

---

## 🧪 How to Run a Script

1. Login to Azure:
   ```powershell
   Connect-AzAccount -UseDeviceAuthentication
   ```

2. Run any script, for example:
   ```powershell
   .\Create-ResourceGroup.ps1
   ```

3. Interactive scripts will guide you with prompts.

---

## ✍️ Customize These Scripts

You can modify these variables inside most scripts:

- `$resourceGroupName` — Resource Group name
- `$location` — Azure region (e.g., `westeurope`, `northeurope`)
- `$credits` — Simulated value for conditional deployments

---

## 🧹 Example: Delete-ResourceGroup.ps1

Safely deletes a Resource Group after confirming it exists and prompting the user.

```powershell
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

- Scripts tested on **PowerShell 7.3+**
- Validated using **Az module**
- Compatible with Azure Free Tier environments
- Includes monitoring and reporting tools for real RGs and VMs
- Continuously improving

---

## 👨‍💻 Author

Made with PowerShell by [@fitimhajdini](https://github.com/fitimhajdini)

---

# Summary

Focused on Azure resource management, scripting automation, and AZ-104-level real-world skills.

---
