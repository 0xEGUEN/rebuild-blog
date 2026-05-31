# Automated Setup & Deploy Script for Windows

# This script will:
# 1. Check and install Node.js if not present
# 2. Check and install Git if not present
# 3. Install npm dependencies
# 4. Configure git and push to GitHub

$ErrorActionPreference = "Stop"

Write-Host "🚀 Blog Me - Automated Setup & GitHub Push" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan

# Function to check if program is installed
function Test-CommandExists {
    param($command)
    $null = Get-Command $command -ErrorAction SilentlyContinue
    return $?
}

# Step 1: Check Node.js
Write-Host "`n📦 Checking Node.js..." -ForegroundColor Yellow
if (Test-CommandExists node) {
    $nodeVersion = node --version
    Write-Host "✅ Node.js already installed: $nodeVersion" -ForegroundColor Green
} else {
    Write-Host "❌ Node.js not found. Please install from https://nodejs.org/" -ForegroundColor Red
    Write-Host "   Download LTS version and restart PowerShell/CMD after install." -ForegroundColor Yellow
    exit 1
}

# Step 2: Check Git
Write-Host "`n📦 Checking Git..." -ForegroundColor Yellow
if (Test-CommandExists git) {
    $gitVersion = git --version
    Write-Host "✅ Git already installed: $gitVersion" -ForegroundColor Green
} else {
    Write-Host "❌ Git not found. Please install from https://git-scm.com/" -ForegroundColor Red
    Write-Host "   Download and restart PowerShell/CMD after install." -ForegroundColor Yellow
    exit 1
}

# Step 3: Navigate to project
Write-Host "`n📂 Navigating to project..." -ForegroundColor Yellow
$projectPath = "c:\Users\hnkwj\OneDrive\Documents\coding\re build blog.me"
if (-Not (Test-Path $projectPath)) {
    Write-Host "❌ Project path not found: $projectPath" -ForegroundColor Red
    exit 1
}
cd $projectPath
Write-Host "✅ In project directory: $(Get-Location)" -ForegroundColor Green

# Step 4: Install npm dependencies
Write-Host "`n📥 Installing npm dependencies..." -ForegroundColor Yellow
if (-Not (Test-Path "node_modules")) {
    npm install
    if ($LASTEXITCODE -ne 0) {
        Write-Host "❌ npm install failed" -ForegroundColor Red
        exit 1
    }
    Write-Host "✅ Dependencies installed" -ForegroundColor Green
} else {
    Write-Host "✅ Dependencies already installed" -ForegroundColor Green
}

# Step 5: Configure Git
Write-Host "`n⚙️  Configuring Git..." -ForegroundColor Yellow
git config --global user.name "hnkwj"
git config --global user.email "your.email@example.com"
Write-Host "✅ Git configured" -ForegroundColor Green

# Step 6: Initialize Git repo (if not already)
if (-Not (Test-Path ".git")) {
    Write-Host "`n🔄 Initializing Git repository..." -ForegroundColor Yellow
    git init
    Write-Host "✅ Git repository initialized" -ForegroundColor Green
} else {
    Write-Host "✅ Git repository already initialized" -ForegroundColor Green
}

# Step 7: Add remote (if not already added)
Write-Host "`n🌐 Adding GitHub remote..." -ForegroundColor Yellow
$remoteUrl = "https://github.com/0xEGUEN/rebuild-blog.git"
$existingRemote = git remote get-url origin -ErrorAction SilentlyContinue

if ($existingRemote -eq $remoteUrl) {
    Write-Host "✅ GitHub remote already configured" -ForegroundColor Green
} else {
    if ($existingRemote) {
        git remote remove origin
    }
    git remote add origin $remoteUrl
    Write-Host "✅ GitHub remote added: $remoteUrl" -ForegroundColor Green
}

# Step 8: Stage all changes
Write-Host "`n📝 Staging files..." -ForegroundColor Yellow
git add .
Write-Host "✅ All files staged" -ForegroundColor Green

# Step 9: Check for changes to commit
$gitStatus = git status --porcelain
if ($gitStatus) {
    Write-Host "`n💾 Creating commit..." -ForegroundColor Yellow
    git commit -m "Build: Update Astro blog with Vercel configuration and documentation"
    Write-Host "✅ Commit created" -ForegroundColor Green
} else {
    Write-Host "ℹ️  No changes to commit" -ForegroundColor Cyan
}

# Step 10: Ensure main branch
Write-Host "`n🌳 Ensuring main branch..." -ForegroundColor Yellow
$currentBranch = git rev-parse --abbrev-ref HEAD
if ($currentBranch -ne "main") {
    git branch -M main
    Write-Host "✅ Renamed to main branch" -ForegroundColor Green
} else {
    Write-Host "✅ Already on main branch" -ForegroundColor Green
}

# Step 11: Push to GitHub
Write-Host "`n🚀 Pushing to GitHub..." -ForegroundColor Yellow
Write-Host "Note: You may be prompted for GitHub credentials" -ForegroundColor Cyan
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "`n✅ Successfully pushed to GitHub!" -ForegroundColor Green
    Write-Host "Repository: https://github.com/0xEGUEN/rebuild-blog" -ForegroundColor Cyan
} else {
    Write-Host "`n⚠️  Push encountered an error" -ForegroundColor Yellow
    Write-Host "If authentication failed, use a Personal Access Token:" -ForegroundColor Yellow
    Write-Host "https://github.com/settings/tokens" -ForegroundColor Cyan
    exit 1
}

# Step 12: Display summary
Write-Host "`n================================================" -ForegroundColor Cyan
Write-Host "✅ Setup & Deploy Complete!" -ForegroundColor Green
Write-Host "================================================" -ForegroundColor Cyan
Write-Host "`n📊 Summary:" -ForegroundColor Cyan
Write-Host "  • Node.js: $(node --version)"
Write-Host "  • Git: $(git --version)"
Write-Host "  • Project: $projectPath"
Write-Host "  • Repository: https://github.com/0xEGUEN/rebuild-blog"
Write-Host "  • Branch: main"
Write-Host "`n🎉 Next steps:" -ForegroundColor Green
Write-Host "  1. Go to: https://github.com/0xEGUEN/rebuild-blog" -ForegroundColor Cyan
Write-Host "  2. Verify all files are there" -ForegroundColor Cyan
Write-Host "  3. Setup Vercel deployment from GitHub" -ForegroundColor Cyan
Write-Host "`n"
