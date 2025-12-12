$rbxlFile = Get-ChildItem -Filter *.rbxl -Recurse -File | Select-Object -First 1

if ($rbxlFile) {
    $rbxlFile
}