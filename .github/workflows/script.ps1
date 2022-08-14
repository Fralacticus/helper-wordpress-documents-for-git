<#
    .SYNOPSIS
    This script generates a password
    .DESCRIPTION
    A password is generated that contains at least one  non-capital, one capital, one number and one special character.
    It will than removes the similar characters (like I & l)
    .PARAMETER liste
    The length of the password
    .NOTES
    Written by Barbara Forbes
    @Ba4bes
    https://4bes.nl
    #>
param(
    [parameter(Mandatory = $true)]
    $listeFichiers
)

write-host $listeFichiers
