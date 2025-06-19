$Sites = Get-SPOSite
Foreach ($Site in $Sites)
{
Get-SPOSite -Limit All -Identity $Site.Url | Select Url, SensitivityLabel
}

$Sites | Export-Csv -Path "C:\temp\wmata-discovery\pdl_sensitivity_labels.csv" -NoTypeInformation