# 📦 Panduan Instalasi Prerequisites - Windows

Sebelum push ke GitHub, Anda perlu install beberapa tools.

---

## 🛠️ Step 1: Install Node.js 18+ LTS

### Download:
1. Kunjungi: **https://nodejs.org/**
2. Download versi **LTS** (Recommended)
3. Jalankan installer, ikuti langkah-langkah:
   - ✅ Accept License Agreement
   - ✅ Keep default path: `C:\Program Files\nodejs\`
   - ✅ Check "Add to PATH"
   - ✅ Check "Automatically install necessary tools"
   - ✅ Click "Install"
   - ✅ Restart komputer setelah selesai

### Verifikasi:
Buka PowerShell/CMD baru dan jalankan:
```powershell
node --version
npm --version
```

Harus menunjukkan versi (contoh: v18.17.1, 9.6.7)

---

## 🛠️ Step 2: Install Git for Windows

### Download:
1. Kunjungi: **https://git-scm.com/download/win**
2. Download installer (64-bit recommended)
3. Jalankan installer, ikuti langkah-langkah:
   - ✅ Click "Next" untuk semua default
   - ✅ Editor: Pilih default atau VSCode
   - ✅ Git's line ending: Pilih "Checkout as-is, commit Unix-style"
   - ✅ Terminal: Pilih "Use Windows' default console window"
   - ✅ Click "Install"
   - ✅ Finish

### Verifikasi:
Buka PowerShell/CMD baru dan jalankan:
```powershell
git --version
```

Harus menunjukkan versi (contoh: git version 2.41.0)

---

## 🚀 Step 3: Setup Project & Push ke GitHub

### 3.1: Install Dependencies
```powershell
cd "c:\Users\hnkwj\OneDrive\Documents\coding\re build blog.me"
npm install
```

Tunggu hingga selesai (2-5 menit).

### 3.2: Configure Git User
```powershell
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

Ganti dengan info Anda.

### 3.3: Initialize Git Repository
```powershell
cd "c:\Users\hnkwj\OneDrive\Documents\coding\re build blog.me"
git init
```

### 3.4: Add Remote Repository
```powershell
git remote add origin https://github.com/0xEGUEN/rebuild-blog.git
```

### 3.5: Add All Files
```powershell
git add .
```

### 3.6: Create First Commit
```powershell
git commit -m "Initial commit: Blog Me - Astro blog platform with Vercel deployment support"
```

### 3.7: Rename Branch to Main
```powershell
git branch -M main
```

### 3.8: Push ke GitHub
```powershell
git push -u origin main
```

Akan diminta GitHub credentials. Gunakan:
- **Username**: `0xEGUEN`
- **Password**: Personal Access Token (PAT) atau GitHub password

---

## 🔐 Authentication GitHub (Recommended)

Jika push gagal karena authentication, buat Personal Access Token:

### Create PAT:
1. Kunjungi: https://github.com/settings/tokens
2. Klik "Generate new token" → "Generate new token (classic)"
3. Nama: `Git Push`
4. Select scopes: ✅ `repo` (full control)
5. Click "Generate token"
6. **Copy token** (hanya tampil sekali!)

### Use PAT:
Ketika diminta password di PowerShell, gunakan token yang di-copy.

---

## ✅ Verifikasi Push Berhasil

1. Kunjungi: https://github.com/0xEGUEN/rebuild-blog
2. Pastikan semua files ada:
   - ✅ `package.json`
   - ✅ `astro.config.mjs`
   - ✅ `src/` folder
   - ✅ `vercel.json`
   - ✅ Documentation files

3. Status harus "main" branch dengan semua commits

---

## 📋 Checklist

- [ ] Node.js 18+ terinstall (`node --version` menunjukkan v18.x+)
- [ ] Git terinstall (`git --version` menunjukkan git version)
- [ ] npm install selesai
- [ ] git config user.name & email sudah diset
- [ ] git remote add origin berhasil
- [ ] git push berhasil tanpa error
- [ ] File visible di GitHub repo

---

## 🆘 Troubleshooting

### "npm: command not found"
→ Restart PowerShell/CMD setelah Node.js install

### "git: command not found"
→ Restart PowerShell/CMD setelah Git install

### "fatal: Could not read from remote repository"
→ Check URL: harus `https://github.com/0xEGUEN/rebuild-blog.git`

### "fatal: remote origin already exists"
→ Gunakan: `git remote set-url origin https://github.com/0xEGUEN/rebuild-blog.git`

### "fatal: Permission denied"
→ Use Personal Access Token (bukan password) sebagai password

---

## 🎯 Summary

1. **Install Node.js** dari nodejs.org
2. **Install Git** dari git-scm.com
3. **Restart komputer** (penting!)
4. **Run commands di PowerShell** sesuai Step 3 di atas
5. **Done!** ✅

---

**Setelah semua terinstall, jalankan commands di Step 3 untuk push ke GitHub!** 🚀
