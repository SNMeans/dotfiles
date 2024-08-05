function Prompt {
    $username = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
    $hostname = $env:COMPUTERNAME
    $path = $(Get-Location)

    $prompt = "${username}@${hostname}: ${path}> "
    Write-Host $prompt -NoNewline -ForegroundColor Yellow
    return " "
}

$env:PYENV = "$HOME\.pyenv\pyenv-win\"
$env:PATH += ";$env:PYENV\bin;$env:PYENV\shims"
