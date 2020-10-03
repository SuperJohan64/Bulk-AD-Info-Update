$Properties = @( `
    "SamAccountName", `
    "GivenName", `
    "Surname", `
    "Company", `
    "StreetAddress", `
    "State", `
    "City", `
    "PostalCode", `
    "Office", `
    "Country", `
    "Title", `
    "Manager", `
    "Department", `
    "MobilePhone", `
    "telephoneNumber" `
)

$ADDomain = (Get-ADDomain).Name
$Time = Get-Date -Format yyyy-MM-ddTHH-mm-ss-ff
$CsvFile = "$PSScriptRoot\$ADDomain AD Users $Time.csv"

$ADUsers = (Get-ADUser -Filter * -Properties $Properties | Select-Object $Properties)
$ADUsers | Export-Csv -NoTypeInformation $CsvFile