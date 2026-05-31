# 🚀 Panduan Setup & Deployment Vercel

## Prasyarat Instalasi

Sebelum memulai, pastikan Anda telah menginstall:

### 1. **Node.js & npm** (Required)
- Download dari: https://nodejs.org/
- Pilih **LTS version** (recommended)
- Verifikasi instalasi:
  ```bash
  node --version
  npm --version
  ```

### 2. **Git** (Required for Vercel)
- Download dari: https://git-scm.com/
- Verifikasi instalasi:
  ```bash
  git --version
  ```

### 3. **GitHub Account** (Required for Vercel deployment)
- Sign up di: https://github.com/

---

## 📦 Setup Lokal

### Step 1: Clone atau Buka Project
```bash
cd "c:\Users\hnkwj\OneDrive\Documents\coding\re build blog.me"
```

### Step 2: Install Dependencies
```bash
npm install
```

Atau gunakan alternatif:
```bash
# Dengan yarn
yarn install

# Dengan pnpm
pnpm install

# Dengan bun
bun install
```

### Step 3: Setup Environment Variables
```bash
# Copy template
copy .env.example .env.local

# Edit .env.local dengan nilai Anda:
SITE_URL=https://your-domain.vercel.app
AUTHOR_NAME=Your Name
AUTHOR_TWITTER=@yourhandle
AUTHOR_GITHUB=yourgithub
```

### Step 4: Test Build Lokal
```bash
npm run build
npm run preview
```

Kunjungi: http://localhost:3000

---

## 🌐 Deploy ke Vercel

### Option A: Via Vercel CLI (Recommended)

#### 1. Install Vercel CLI
```bash
npm install -g vercel
```

#### 2. Login ke Vercel
```bash
vercel login
```

#### 3. Deploy Project
```bash
vercel
```

Atau untuk production:
```bash
vercel --prod
```

#### 4. Konfigurasi Saat Deploy
Ketika diminta:
- **Framework**: Pilih `Astro`
- **Build Command**: `npm run build`
- **Output Directory**: `dist`
- **Environment Variables**: Masukkan semua dari `.env.local`

### Option B: Via GitHub + Vercel Dashboard (Recommended)

#### 1. Push ke GitHub
```bash
cd "c:\Users\hnkwj\OneDrive\Documents\coding\re build blog.me"
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/blog-me.git
git push -u origin main
```

#### 2. Connect di Vercel Dashboard
1. Kunjungi: https://vercel.com/dashboard
2. Klik **"Add New..."** → **"Project"**
3. Pilih repository `blog-me`
4. **Build Settings**:
   - Framework Preset: `Astro`
   - Build Command: `npm run build`
   - Output Directory: `dist`
   - Install Command: `npm install`

#### 3. Environment Variables di Vercel
Klik **Settings** → **Environment Variables**, tambahkan:
- `SITE_URL`: `https://your-domain.vercel.app`
- `AUTHOR_NAME`: Nama Anda
- `AUTHOR_TWITTER`: Handle Twitter
- `AUTHOR_GITHUB`: Username GitHub
- `SITE_TITLE`: Judul blog
- `SITE_DESCRIPTION`: Deskripsi blog

#### 4. Deploy
Klik **"Deploy"**

---

## ✅ Vercel Configuration Files

### vercel.json (Sudah Dibuat)
```json
{
  "buildCommand": "npm run build",
  "outputDirectory": "dist",
  "framework": "astro",
  "nodeVersion": "18.x"
}
```

### Build & Output Configuration
- **Build Command**: `npm run build`
- **Output Directory**: `dist`
- **Install Command**: `npm install`

---

## 🔧 Post-Deployment Configuration

### 1. Custom Domain
1. Di Vercel Dashboard, buka project
2. Klik **Settings** → **Domains**
3. Tambahkan domain custom
4. Update DNS records sesuai instruksi Vercel

### 2. Environment Variables
Update di Vercel Dashboard:
- **Settings** → **Environment Variables**
- Pastikan `SITE_URL` mengarah ke domain Anda

### 3. Analytics (Optional)
1. Di Vercel Dashboard: **Settings** → **Analytics**
2. Enable Web Analytics
3. Setup Google Analytics jika diinginkan

---

## 📝 .env.local (Lokal)
```env
SITE_URL=https://yourdomain.vercel.app
SITE_TITLE=Blog Me - A Modern Blog Platform
SITE_DESCRIPTION=A beautiful, fast, and modern blog built with Astro
AUTHOR_NAME=Your Name
AUTHOR_EMAIL=your.email@example.com
AUTHOR_TWITTER=@yourhandle
AUTHOR_GITHUB=yourgithub
GOOGLE_ANALYTICS_ID=
PLAUSIBLE_DOMAIN=
ENABLE_SEARCH=true
ENABLE_RSS=true
ENABLE_SITEMAP=true
```

---

## 🚨 Troubleshooting

### Build Failed
```bash
# Clear cache dan rebuild
rm -r node_modules .astro dist
npm install
npm run build
```

### Port 3000 Sudah Digunakan
```bash
npm run dev -- --port 3001
```

### Environment Variables Tidak Terbaca
1. Verifikasi nama variabel di `astro.config.mjs`
2. Di Vercel Dashboard, pastikan variabel sudah di-set
3. Re-deploy project

### Sitemap/RSS Tidak Generate
- Pastikan `SITE_URL` benar di environment variables
- Re-deploy setelah update `SITE_URL`

---

## 📊 Performance Checks

Setelah deployment, check:

### 1. Lighthouse Score
- Kunjungi: PageSpeed Insights
- Paste URL: `https://your-domain.vercel.app`

### 2. SEO
- Check sitemap: `https://your-domain.vercel.app/sitemap.xml`
- Check RSS: `https://your-domain.vercel.app/rss.xml`

### 3. Build Analytics
- Di Vercel Dashboard: **Analytics**
- Check build time dan output size

---

## 🔄 Continuous Deployment

Setiap kali Anda push ke GitHub:
1. Vercel otomatis detect perubahan
2. Mulai build process
3. Deploy ke preview/production
4. Link dibuat otomatis

---

## 📱 Mobile & Desktop Responsive

Test di:
- Chrome DevTools (F12 → Device Toolbar)
- https://responsivedesignchecker.com
- Mobile device real

---

## 🎯 Next Steps

1. ✅ Install Node.js
2. ✅ Run `npm install`
3. ✅ Test lokal dengan `npm run dev`
4. ✅ Setup GitHub repository
5. ✅ Connect ke Vercel
6. ✅ Deploy
7. ✅ Configure custom domain

---

**Siap untuk di-deploy!** 🚀
