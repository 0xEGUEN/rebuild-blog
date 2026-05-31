# 🚀 Quick Start Guide - Setup & Deploy

## ⏱️ Waktu: 5 menit (Setup Lokal) + 10 menit (Deploy ke Vercel)

---

## 🔧 Step 1: Setup Lokal (5 min)

### 1.1 Install Node.js
- Download: https://nodejs.org/ (LTS version)
- Verifikasi: `node --version` → v18.x
- Restart PowerShell

### 1.2 Install Dependencies
```bash
cd "c:\Users\hnkwj\OneDrive\Documents\coding\re build blog.me"
npm install
```
(Tunggu 2-5 menit)

### 1.3 Setup Environment
```bash
copy .env.example .env.local
```

Edit `.env.local` dengan informasi Anda.

### 1.4 Test
```bash
npm run dev
```
Buka: http://localhost:3000 → Harus berjalan ✅

---

## 🌐 Step 2: Deploy ke Vercel (10 min)

### Option A: Quick Deploy via CLI

```bash
npm install -g vercel
vercel login
vercel --prod
```

Ikuti instruksi, tunggu selesai. **DONE!** ✅

### Option B: Via Dashboard

1. Buat repo di GitHub: https://github.com/new
   - Nama: `blog-me`
   - Push code lokal

2. Buka Vercel: https://vercel.com/dashboard
   - Klik "Add New" → "Project"
   - Pilih repo `blog-me`
   - Klik "Import"

3. Configure:
   - Framework: `Astro`
   - Build: `npm run build`
   - Output: `dist`

4. Add Environment Variables:
   - `SITE_URL=https://yourdomain.vercel.app`
   - `AUTHOR_NAME=Your Name`
   - (Lihat `.env.local` untuk lengkapnya)

5. Klik "Deploy" → Tunggu 3-5 menit → **DONE!** ✅

---

## 📝 Add Auto-Deploy (Optional)

Setelah deploy, untuk auto-update setiap kali push ke GitHub:

1. Di Vercel Dashboard:
   - Project Settings → API Tokens
   - Create token, copy

2. Di GitHub (`blog-me` repo):
   - Settings → Secrets and variables → Actions
   - Add 3 secrets:
     - `VERCEL_TOKEN` (dari Vercel)
     - `VERCEL_ORG_ID` (dari Vercel Project)
     - `VERCEL_PROJECT_ID` (dari Vercel Project)

3. Done! Sekarang setiap push ke main → auto-deploy

---

## 🔄 Update Blog

```bash
# Edit/add posts di: src/content/blog/

# Push to GitHub
git add .
git commit -m "Add new post"
git push origin main

# Vercel auto-deploy dalam 5 menit ✅
```

---

## 📚 Docs

- **Detailed Setup**: [COMPLETE_SETUP_GUIDE.md](COMPLETE_SETUP_GUIDE.md)
- **Deployment Details**: [DEPLOYMENT_GUIDE.md](DEPLOYMENT_GUIDE.md)
- **Vercel Guide**: [VERCEL_SETUP.md](VERCEL_SETUP.md)
- **Astro Docs**: https://docs.astro.build
- **Vercel Docs**: https://vercel.com/docs

---

## 🆘 Quick Troubleshoot

| Problem | Solution |
|---------|----------|
| `npm not found` | Install Node.js from nodejs.org |
| Build failed | Run `npm run build` locally, check errors |
| Site not loading | Refresh browser, wait 5 min, clear cache |
| Env vars not working | Redeploy, check Dashboard |
| GitHub push fails | Run `git config --global user.name "Name"` |

---

**That's it! Your blog is now live.** 🎉

