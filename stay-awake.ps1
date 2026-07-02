Add-Type -AssemblyName System.Windows.Forms

function toggleNumlock {
    [System.Windows.Forms.SendKeys]::SendWait("{NUMLOCK}")
    Start-Sleep -Milliseconds 100
    [System.Windows.Forms.SendKeys]::SendWait("{NUMLOCK}")
}

Write-Host "Stay Awake script started" -ForegroundColor Green

# Toggle NumLock every 4 minutes to prevent the computer from going to sleep
while ($true) {
    toggleNumlock
    Start-Sleep 240
}
