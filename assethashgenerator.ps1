Param(
    [string]$path
)

$files = Get-ChildItem -Path $path

foreach ($file in $files) {
    $hash = Get-FileHash $file -Algorithm SHA256
    Write-Host "$($file.Name) : $($hash.Hash)"
}
