# Target User UPN
$UserUPN = "S.Jobs@domain.onmicrosoft.com"

Write-Host "Starting offboarding process for: $UserUPN" -ForegroundColor Cyan

# 1. Block Sign-in 
Update-MgUser -UserId $UserUPN -AccountEnabled:$false
Write-Host "Step 1: User account disabled." -ForegroundColor Green

# 2. Revoke all Refresh Tokens (The 'Kill' command)
# This forces the user out of active Teams/Outlook sessions immediately
Revoke-MgUserSignInSession -UserId $UserUPN
Write-Host "Step 2: Active sessions revoked." -ForegroundColor Green

# 3. Remove All Assigned Licenses
$AssignedLicenses = (Get-MgUser -UserId $UserUPN -Property AssignedLicenses).AssignedLicenses

if ($AssignedLicenses) {
    $LicenseIds = $AssignedLicenses.SkuId
    Set-MgUserLicense -UserId $UserUPN -AddLicenses @() -RemoveLicenses $LicenseIds
    Write-Host "Step 3: All licenses ($($LicenseIds.Count)) successfully removed." -ForegroundColor Green
} else {
    Write-Host "Step 3: No licenses found on account. Skipping removal." -ForegroundColor Gray
}

Write-Host "`nOffboarding Complete: $UserUPN has been successfully secured." -ForegroundColor Yellow
