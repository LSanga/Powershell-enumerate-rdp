<#
.SYNOPSIS
    query user /server:[ip]
.DESCRIPTION
    This script help in harvesting RDP users that are connected to targets machines by using the "Query user" command
.PARAMETER Server
    Specify the target server. By deafult all the subnet /24 will be tested.
.EXAMPLE
    C:\PS> enumerate_rdp.ps1 -Server 10.1.1.1
    This script will launch the command "query user /server:[ip]" against all the 10.1.1.0/24 subnet.
	If -Server is omitted, user will be prompted for the value
.NOTES
    Author: LSanga
    Date:   26/07/2019    
#>

#get Target from user input
param (
	[Parameter(Mandatory=$true)][string]$Server
 )

#Create /24 subnet 
$range = $Server.split("\.")[0,1,2] -join "."

#Launch command for each IP in subnet
1..255 | ForEach-Object -Process {query user /server:"$range.$_"}
