if ($args.Count -ne 2) {
    Write-Host "Please provide two arguments."
    Exit
}

$Param1 = $args[0]
$Param2 = $args[1]

Write-Output "Parameter 1: $Param1"
Write-Output "Parameter 2: $Param2"
