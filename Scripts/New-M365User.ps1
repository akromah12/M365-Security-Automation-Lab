
# This defines the domain
$Domain = "domain.onmicrosoft.com"

# Create a list of users with attributes
$UsersToCreate = @(
    @{UPN="S.Jobs"; Name="Steve Jobs"; Title="CEO"; Dept="Executive"},
    @{UPN="A.Lovelace"; Name="Ada Lovelace"; Title="Lead Developer"; Dept="Engineering"},
    @{UPN="K.Johnson"; Name="Katherine Johnson"; Title="Data Scientist"; Dept="Research"},
    @{UPN="H.Lamarr"; Name="Hedy Lamarr"; Title="Comms Engineer"; Dept="Engineering"},
    @{UPN="T.BernersLee"; Name="Tim Berners-Lee"; Title="Web Architect"; Dept="IT"}
)

foreach ($User in $UsersToCreate) {
    $PasswordProfile = @{ Password = "ChangeMe2026!#" ; ForceChangePasswordNextSignIn = $true }
    
    New-MgUser -DisplayName $User.Name `
               -UserPrincipalName "$($User.UPN)@$Domain" `
               -JobTitle $User.Title `
               -Department $User.Dept `
               -MailNickname $User.UPN `
               -AccountEnabled $true `
               -PasswordProfile $PasswordProfile
               
    Write-Host "Success: Created $($User.Name) in $($User.Dept)" -ForegroundColor Cyan
}
