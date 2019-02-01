Import-Module activedirectory

$AD = import-csv C:\FILE-PATH\NAME-OF-CSV-FILE.csv

foreach ($User in $AD)
{

    $SANC = $User.SamAccountNameCurrent
    $SANN = $User.SamAccountNameNew
    $TN = $User.TitleNew
    $UPNN = $User.UserPrincipalNameNEW

    Set-ADUser -Identity $SANC -Company Advanced -Title $TN -Department $null -Description $null -Office $null -UserPrincipalName $UPNN -SamAccountName $SANN
 }
