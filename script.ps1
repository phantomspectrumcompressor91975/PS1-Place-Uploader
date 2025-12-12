$rbxlFile = Get-ChildItem -Filter *.rbxl -Recurse -File | Select-Object -First 1

if ($rbxlFile -and (Test-Path -Path data.txt)) {
    $textContent = Get-Content data.txt

    $rbxlFile
}