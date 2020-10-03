$CsvFile = "$PSScriptRoot\Users.csv"
$CsvData = Import-Csv $CsvFile

$SamAccountNames = @()

foreach ($User in $CsvData) {
    
    $FullName = $User.GivenName + " " + $User.Surname
    $SAMAccountName = (Get-ADUser -Filter 'DisplayName -like $FullName').SamAccountName

    $SamAccountNames += New-Object -TypeName psobject -Property @{
        GivenName = $User.GivenName
        Surname = $User.Surname
        SAMAccountName = $SAMAccountName
    }
}

$SamAccountNames | Export-Csv -NoTypeInformation -Path $PSScriptRoot\SamAccountNames.csv