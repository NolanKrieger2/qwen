# Qwen terminal setup

This repository installs the Qwen Code terminal app on another computer without
copying private API keys, chat history, or machine-specific files.

## Windows

1. Install [Node.js LTS](https://nodejs.org/).
2. Open PowerShell in this folder.
3. Run:

   ```powershell
   Set-ExecutionPolicy -Scope Process Bypass
   .\install.ps1
   ```

4. Copy `.env.example` to `$HOME\.qwen\.env`, fill in your API key, then run:

   ```powershell
   qwen
   ```

## Linux or macOS

Install Node.js 20 or newer, then run:

```bash
./install.sh
cp .env.example ~/.qwen/.env
# Edit ~/.qwen/.env and add your API key.
qwen
```

The scripts install the same Qwen Code version that was present on the original
computer. To upgrade later, run `npm install --global @qwen-code/qwen-code@latest`.

