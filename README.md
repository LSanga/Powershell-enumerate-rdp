# Powershell-enumerate-rdp
This script help in harvesting RDP users that are connected to targets machines by using the "Query user" command

```
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
    Author: Securitree
    Date:   26/07/2019  
#>
```
