# 📋 Deployment Checklist untuk Vercel

## ✅ Pre-Deployment Checklist

### 1. Setup Lokal
- [ ] Install Node.js 18+ dari https://nodejs.org/
- [ ] Verifikasi: `node --version` menunjukkan v18.x atau lebih baru
- [ ] Install Git dari https://git-scm.com/
- [ ] Verifikasi: `git --version` menunjukkan versi git

### 2. Project Setup
- [ ] Buka folder project: `c:\Users\hnkwj\OneDrive\Documents\coding\re build blog.me`
- [ ] Run: `npm install` (tunggu hingga selesai)
- [ ] Copy `.env.example` ke `.env.local`
- [ ] Edit `.env.local` dengan informasi Anda:
  - `SITE_URL` = domain Anda atau `https://yourdomain.vercel.app`
  - `AUTHOR_NAME` = nama Anda
  - `AUTHOR_TWITTER` = handle Twitter Anda
  - `AUTHOR_GITHUB` = username GitHub Anda

### 3. Test Lokal
- [ ] Run: `npm run dev`
- [ ] Kunjungi: http://localhost:3000
- [ ] Pastikan site muncul dengan benar
- [ ] Test navigasi (Home, Blog, About, Contact, Projects)
- [ ] Stop dev server: `Ctrl+C`

### 4. Build Test
- [ ] Run: `npm run build`
- [ ] Pastikan tidak ada error (sukses dengan pesan "✓ Done")
- [ ] Folder `dist` harus terbuat dengan file HTML

### 5. GitHub Setup
- [ ] Buat repository baru di https://github.com/new
- [ ] Nama repository: `blog-me`
- [ ] Visibility: Public (recommended) atau Private
- [ ] Jangan inisialisasi README (karena sudah ada)

### 6. Push ke GitHub
Di PowerShell/Terminal, jalankan:
```bash
cd "c:\Users\hnkwj\OneDrive\Documents\coding\re build blog.me"
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
git init
git add .
git commit -m "Initial commit: Blog Me - Astro blog platform"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/blog-me.git
git push -u origin main
```

- [ ] Ganti `YOUR_USERNAME` dengan username GitHub Anda
- [ ] Pastikan semua file ter-push ke GitHub

---

## 🌐 Vercel Deployment

### Option A: Deploy via Vercel CLI (Cepat)

#### Step 1: Install Vercel CLI
```bash
npm install -g vercel
```

#### Step 2: Login ke Vercel
```bash
vercel login
```
- [ ] Ikuti instruksi di browser
- [ ] Pilih metode login Anda (GitHub recommended)

#### Step 3: Deploy
```bash
vercel --prod
```
- [ ] Ketika ditanya "Setup and deploy?", jawab: **y**
- [ ] Ketika ditanya "Which scope?", pilih akun personal Anda
- [ ] Ketika ditanya "Link to existing project?", jawab: **n**
- [ ] Vercel akan membuat project dan deploy
- [ ] Tunggu hingga deployment selesai (hijau/sukses)

#### Step 4: Selesai
- [ ] Kunjungi URL yang diberikan Vercel
- [ ] Pastikan site berjalan dengan baik
- [ ] Vercel akan memberikan URL seperti: `https://blog-me-xxxx.vercel.app`

---

### Option B: Deploy via Vercel Dashboard (Rekomendasi)

#### Step 1: Buka Vercel Dashboard
- [ ] Kunjungi: https://vercel.com/dashboard
- [ ] Login dengan GitHub

#### Step 2: Import Project
- [ ] Klik: **"Add New"** → **"Project"**
- [ ] Pilih repository **`blog-me`** dari GitHub
- [ ] Klik: **"Import"**

#### Step 3: Configure Project
- [ ] **Framework Preset**: Pilih `Astro`
- [ ] **Build Command**: `npm run build`
- [ ] **Output Directory**: `dist`
- [ ] **Install Command**: `npm install` (default)

#### Step 4: Environment Variables
- [ ] Klik: **"Environment Variables"**
- [ ] Tambahkan variabel:

| Variable | Value |
|----------|-------|
| `SITE_URL` | https://yourdomain.vercel.app |
| `SITE_TITLE` | Blog Me - A Modern Blog Platform |
| `SITE_DESCRIPTION` | A beautiful, fast, and modern blog built with Astro |
| `AUTHOR_NAME` | Your Name |
| `AUTHOR_EMAIL` | your@email.com |
| `AUTHOR_TWITTER` | @yourhandle |
| `AUTHOR_GITHUB` | yourgithub |

- [ ] Untuk setiap variabel, pilih environments: **Production**, **Preview**, **Development**
- [ ] Klik: **"Deploy"**

#### Step 5: Deploy
- [ ] Tunggu deployment (biasanya 3-5 menit)
- [ ] Status harus berubah menjadi ✅ "Ready"
- [ ] Klik URL untuk membuka site

---

## 🎯 Post-Deployment

### Verifikasi Deployment
- [ ] Kunjungi URL yang diberikan Vercel
- [ ] Test semua halaman:
  - [ ] Home page
  - [ ] Blog listing
  - [ ] Blog post (jika ada)
  - [ ] About page
  - [ ] Contact page
  - [ ] Projects page
- [ ] Check sitemap: `/sitemap.xml`
- [ ] Check RSS feed: `/rss.xml`
- [ ] Test dark mode (jika sudah diimplementasikan)

### Performance Check
- [ ] PageSpeed Insights: https://pagespeed.web.dev/
- [ ] Paste URL production Anda
- [ ] Target score:
  - [ ] Desktop: > 90
  - [ ] Mobile: > 75

### SEO Verification
- [ ] Google Search Console: https://search.google.com/search-console
- [ ] Submit sitemap: `/sitemap.xml`
- [ ] Monitor indexing

### Setup Custom Domain (Optional)
- [ ] Di Vercel Dashboard, buka project
- [ ] **Settings** → **Domains**
- [ ] Tambahkan domain Anda
- [ ] Update DNS records sesuai instruksi Vercel
- [ ] Tunggu propagasi DNS (beberapa jam)

---

## 🔄 Continuous Updates

Setiap kali Anda update blog:

### Step 1: Edit Content Lokal
```bash
# Edit atau tambah file di folder src/content/blog/
```

### Step 2: Commit & Push
```bash
git add .
git commit -m "Add new blog post: Post Title"
git push origin main
```

### Step 3: Vercel Auto-Deploy
- [ ] Vercel otomatis detect push
- [ ] Mulai build otomatis
- [ ] Kunjungi https://vercel.com/dashboard untuk monitor progress
- [ ] Deploy otomatis selesai dalam 3-5 menit
- [ ] Site terupdate otomatis

---

## 🐛 Troubleshooting

### Error: "Build failed"
1. Cek build logs di Vercel Dashboard:
   - **Settings** → **Build & Development Settings**
   - Scroll ke **Build Logs**
2. Coba build lokal:
   ```bash
   npm run build
   ```
3. Fix error lokal, commit, dan push ulang

### Error: "npm: command not found"
- [ ] Install Node.js dari https://nodejs.org/
- [ ] Restart terminal/PowerShell
- [ ] Coba ulang

### Site tidak muncul
- [ ] Tunggu 5-10 menit (DNS propagation)
- [ ] Refresh browser (Ctrl+Shift+Delete untuk clear cache)
- [ ] Cek Vercel deployment status (harus hijau)

### Environment variables tidak bekerja
1. Di Vercel Dashboard:
   - [ ] **Settings** → **Environment Variables**
   - [ ] Pastikan variabel sudah ditambahkan
2. Untuk environment yang berbeda:
   - [ ] Production: untuk live domain
   - [ ] Preview: untuk branch selain main
3. Klik **"Redeploy"** setelah update variabel

### 404 pada halaman tertentu
- [ ] Pastikan file `.astro` ada di folder `src/pages/`
- [ ] Rebuild lokal: `npm run build`
- [ ] Push ulang ke GitHub

---

## 📞 Support Links

- **Vercel Docs**: https://vercel.com/docs
- **Astro Docs**: https://docs.astro.build/
- **Astro + Vercel**: https://docs.astro.build/guides/deploy/vercel/
- **Vercel CLI**: https://vercel.com/cli

---

**Deployment Selesai!** 🎉

Jika ada pertanyaan, lihat FAQ atau hubungi Vercel Support.
