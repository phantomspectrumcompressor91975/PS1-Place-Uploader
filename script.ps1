if (Test-Path -Path input.txt) {
    $rbxlFile = Get-ChildItem -Filter *.rbxl -Recurse -File | Select-Object -First 1

    if ($rbxlFile) {
        Get-Content input.txt | Foreach-Object {
            $var = $_.Split('=')
            New-Variable -Name $var[0] -Value $var[1]
         }

        $rbxlFile
        $username
        $password
    }
}