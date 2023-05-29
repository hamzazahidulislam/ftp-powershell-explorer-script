# $first = "\temp"
# start explorer.exe "C:\Users\Hp\Desktop $first" 

function Get-DefaultGateway {
    $output = netsh interface ip show address | Select-String -Pattern "Default Gateway"

    foreach ($line in $output) {
        if ($line -match '\b(?:[0-9]{1,3}\.){3}[0-9]{1,3}\b') {
            return $matches[0]
        }
    }

    return ""
}

$defaultGateway = Get-DefaultGateway
Write-Output $defaultGateway

# $first = "\temp"
# start explorer.exe "C:\Users\Hp\Desktop $first" 