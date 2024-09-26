# Get the current directory
$folderPath = Get-Location

# Get the name of the script file itself
$thisScriptName = "rename_files_by_date.ps1"

# Get all files in the folder, excluding the script itself
Get-ChildItem -Path $folderPath -File | Where-Object { $_.Name -ne $thisScriptName } | ForEach-Object {
    # Get file's last modified date
    $lastModified = $_.LastWriteTime

    # Format the date as YYYYMMDD_HHMMSS
    $formattedDate = $lastModified.ToString("yyyyMMdd_HHmmss")

    # Get file extension
    $fileExtension = $_.Extension

    # Create the new filename (use the date and preserve the extension)
    $newFileName = "$formattedDate`_1$fileExtension"

    # Create the full path for the new name
    $newFilePath = Join-Path $folderPath $newFileName

    # If a file with the new name already exists, increment the number to avoid conflicts
    $counter = 1
    while (Test-Path $newFilePath) {
        $counter++
        $newFileName = "$formattedDate`_$counter$fileExtension"
        $newFilePath = Join-Path $folderPath $newFileName
    }

    # Rename the file
    Rename-Item -Path $_.FullName -NewName $newFilePath
}

Write-Host "Files renamed successfully, except the script itself."
