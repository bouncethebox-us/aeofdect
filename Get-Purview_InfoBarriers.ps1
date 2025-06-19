<#
.SYNOPSIS
  This script retrieves the information barrier policies and segments deployed to the tenant.
.DESCRIPTION
  Use this script to update the information barrier mode from "Open" to "Implicit" across the groups in your tenant.
#>


# Connect-ExchangeOnline -UserPrincipalName bbeehner@planetdemo
Connect-IPPSSession -UserPrincipalName adminupn@wmata.com

Get-InformationBarrierPolicy |
    Select-Object Name, State, AssignedSegment, Segments |
    Export-Csv -Path "C:\temp\wmata-discovery\wmata_infobarriers.csv" -NoTypeInformation
