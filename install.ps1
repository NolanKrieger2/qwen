$ErrorActionPreference = "Stop"

if (-not (Get-Command node -ErrorAction SilentlyContinue)) {
    throw "Node.js is required. Install the LTS release from https://nodejs.org/ and rerun this script."
}

$major = [int]((node --version).TrimStart("v").Split(".")[0])
if ($major -lt 20) {
    throw "Node.js 20 or newer is required."
}

npm install --global "@qwen-code/qwen-code@0.22.0"

Write-Host "Qwen Code is installed. Run: qwen"
Write-Host "Then copy .env.example to $HOME\.qwen\.env and add your API key."

