# Step 1: Get all VMs
$allVMs = Get-AzVM

# Step 2: Loop through each VM
foreach ($vm in $allVMs) {
    $vmName = $vm.Name
    $vmSize = $vm.HardwareProfile.VmSize

    # Step 3: Get power state
    $vmStatus = Get-AzVM -ResourceGroupName $vm.ResourceGroupName -Name $vmName -Status
    $powerState = $vmStatus.Statuses | Where-Object { $_.Code -like "PowerState*" } | Select-Object -ExpandProperty DisplayStatus

    # Step 4: Print info with color based on state
    if ($powerState -eq "VM running") {
        Write-Host "✅ VM: '$vmName' | State: '$powerState' | Size: '$vmSize'" -ForegroundColor Green
    } elseif ($powerState -eq "VM stopped") {
        Write-Host "❌ VM: '$vmName' | State: '$powerState' | Size: '$vmSize'" -ForegroundColor Red
    } else {
        Write-Host "⚙️ VM: '$vmName' | State: '$powerState' | Size: '$vmSize'" -ForegroundColor Gray
    }
}
