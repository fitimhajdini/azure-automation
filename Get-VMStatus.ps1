# Get-VMStatus.ps1
# Lists all VMs across RGs with name, power state, and size (color-coded)

# Step 1: Get all VMs and attach ResourceGroupName manually
$allVMs = Get-AzVM | ForEach-Object {
    $_ | Add-Member -NotePropertyName ResourceGroupName -NotePropertyValue $_.Id.Split("/")[4] -Force
    $_
}

# Step 2: Loop through each VM
foreach ($vm in $allVMs) {
    $vmName = $vm.Name
    $vmSize = $vm.HardwareProfile.VmSize

    # Step 3: Get live power state
    $vmStatus = Get-AzVM -ResourceGroupName $vm.ResourceGroupName -Name $vmName -Status
    $powerState = $vmStatus.Statuses | Where-Object { $_.Code -like "PowerState*" } | Select-Object -ExpandProperty DisplayStatus

    # Step 4: Output with color
    if ($powerState -eq "VM running") {
        Write-Host "✅ VM: '$vmName' | State: '$powerState' | Size: '$vmSize'" -ForegroundColor Green
    } elseif ($powerState -eq "VM stopped") {
        Write-Host "❌ VM: '$vmName' | State: '$powerState' | Size: '$vmSize'" -ForegroundColor Red
    } else {
        Write-Host "⚙️ VM: '$vmName' | State: '$powerState' | Size: '$vmSize'" -ForegroundColor Gray
    }
}
