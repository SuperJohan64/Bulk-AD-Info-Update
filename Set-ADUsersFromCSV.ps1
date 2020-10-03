$CsvFile = Import-csv "$PSScriptRoot\Users.csv"

foreach ($User in $CsvFile) {
    
    if ($User.Title) {Set-ADUser $User.SamAccountName -Title $User.Title}

    if ($User.Department) {Set-ADUser $User.SamAccountName -Department $User.Department}

    if ($User.Manager) {Set-ADUser $User.SamAccountName -Manager $User.Manager}

    if ($User.Company) {Set-ADUser $User.SamAccountName -Company $User.Company}

    if ($User.StreetAddress) {Set-ADUser $User.SamAccountName -StreetAddress $User.StreetAddress}

    if ($User.City) {Set-ADUser $User.SamAccountName -City $User.City}
    
    if ($User.State) {Set-ADUser $User.SamAccountName -State $User.State}
    
    if ($User.PostalCode) {Set-ADUser $User.SamAccountName -PostalCode $User.PostalCode}
    
    if ($User.Office) {Set-ADUser $User.SamAccountName -Office $User.Office}
    
    if ($User.Country) {Set-ADUser $User.SamAccountName -Country $User.Country}
    
    if ($User.MobilePhone) {Set-ADUser $User.SamAccountName -MobilePhone $User.MobilePhone}
    
    if ($User.telephoneNumber) {Set-ADUser $User.SamAccountName -OfficePhone $User.telephoneNumber}

}