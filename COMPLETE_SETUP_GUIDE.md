# 🚀 Panduan Lengkap Setup & Deploy ke Vercel

Dokumen ini adalah panduan lengkap untuk setup dan deploy blog ke Vercel dengan integrasi GitHub.

---

## 📋 Daftar Isi

1. [Prasyarat](#prasyarat)
2. [Setup Lokal](#setup-lokal)
3. [Konfigurasi Vercel](#konfigurasi-vercel)
4. [Deploy Pertama Kali](#deploy-pertama-kali)
5. [Auto-Deploy dengan GitHub](#auto-deploy-dengan-github)
6. [Konfigurasi Domain Custom](#konfigurasi-domain-custom)
7. [Troubleshooting](#troubleshooting)

---

## 📦 Prasyarat

Sebelum memulai, Anda perlu:

### 1. **Node.js 18+**
```bash
# Download dari https://nodejs.org/
# Verifikasi:
node --version  # v18.x atau lebih baru
npm --version   # v9.x atau lebih baru
```

### 2. **Git**
```bash
# Download dari https://git-scm.com/
# Verifikasi:
git --version
```

### 3. **Akun GitHub** (Gratis)
- Kunjungi: https://github.com/signup
- Login atau buat akun baru

### 4. **Akun Vercel** (Gratis)
- Kunjungi: https://vercel.com/signup
- Gunakan GitHub untuk login (recommended)

---

## 🛠️ Setup Lokal

### Step 1: Install Dependencies

```bash
cd "c:\Users\hnkwj\OneDrive\Documents\coding\re build blog.me"
npm install
```

Tunggu hingga selesai (2-5 menit).

### Step 2: Configure Environment

```bash
# Copy template
copy .env.example .env.local
```

Edit `.env.local`:
```env
SITE_URL=https://yourdomain.vercel.app
SITE_TITLE=Blog Me - My Personal Blog
SITE_DESCRIPTION=A modern blog about tech and coding
AUTHOR_NAME=Your Name
AUTHOR_EMAIL=your@email.com
AUTHOR_TWITTER=@yourhandle
AUTHOR_GITHUB=yourgithub
```

### Step 3: Test Lokal

```bash
# Development mode
npm run dev
```

Buka: http://localhost:3000

Pastikan:
- ✅ Page muncul dengan baik
- ✅ Dark mode bekerja
- ✅ Navigation berfungsi
- ✅ Tidak ada error di console

Stop dengan: `Ctrl+C`

### Step 4: Build Test

```bash
npm run build
npm run preview
```

Buka: http://localhost:3000 (preview port berbeda)

Pastikan site berfungsi normal sebelum deploy.

---

## 🌐 Konfigurasi Vercel

### Setup via Vercel CLI (Rekomendasi)

#### 1. Install Vercel CLI
```bash
npm install -g vercel
```

#### 2. Login
```bash
vercel login
```

Ikuti instruksi di browser, pilih GitHub untuk kemudahan.

#### 3. Link Project
```bash
cd "c:\Users\hnkwj\OneDrive\Documents\coding\re build blog.me"
vercel link
```

Jawab pertanyaan:
- "Set up and deploy?": **y**
- "Which scope do you want to deploy to?": Pilih personal account
- "Link to existing project?": **n**
- "What's your project's name?": `blog-me`
- "In which directory is your code?": `.` (current directory)
- "Want to modify these settings?": **n**

Vercel akan membuat project baru dan memberikan Project ID & Org ID.

#### 4. Set Environment Variables
```bash
vercel env add SITE_URL
# Masukkan: https://yourdomain.vercel.app

vercel env add AUTHOR_NAME
# Masukkan: Your Name

# Ulangi untuk variabel lainnya...
```

Atau lewat Vercel Dashboard (lebih mudah).

#### 5. Deploy Preview
```bash
vercel
```

Tunggu selesai, akan mendapat URL preview.

#### 6. Deploy Production
```bash
vercel --prod
```

Vercel akan membuat production deployment.

---

## 🚀 Deploy Pertama Kali

### Via Vercel Dashboard (Alternatif)

1. **Buka Dashboard**: https://vercel.com/dashboard

2. **Klik "Add New"** → **"Project"**

3. **Import Repository**:
   - Pilih `blog-me` dari GitHub
   - Klik "Import"

4. **Configure Project**:
   - Framework: `Astro`
   - Build Command: `npm run build`
   - Output Directory: `dist`
   - Root Directory: `./`

5. **Add Environment Variables**:
   - Klik "Environment Variables"
   - Tambahkan semua variabel dari `.env.local`
   - Pastikan dipilih: Production, Preview, Development

6. **Deploy**:
   - Klik "Deploy"
   - Tunggu 3-5 menit
   - Vercel memberi URL seperti: `https://blog-me-xxx.vercel.app`

### ✅ Verifikasi Deploy

Buka URL yang diberikan, pastikan:
- ✅ Site muncul dengan benar
- ✅ Navigation bekerja
- ✅ Tidak ada console error
- ✅ Responsive di mobile

---

## 🔄 Auto-Deploy dengan GitHub

### Setup GitHub Secrets (untuk CI/CD)

#### 1. Dapatkan Vercel Tokens

**Token 1: VERCEL_TOKEN**
1. Kunjungi: https://vercel.com/account/tokens
2. Klik "Create"
3. Nama: `GitHub Actions`
4. Expiration: 90 days
5. Copy token (akan butuh segera)

**Token 2 & 3: Dari Project**
1. Di Vercel Dashboard, buka project `blog-me`
2. Settings → **Copy**:
   - `VERCEL_ORG_ID`
   - `VERCEL_PROJECT_ID`

#### 2. Set GitHub Secrets

1. Kunjungi: https://github.com/yourusername/blog-me/settings/secrets/actions

2. Klik "New repository secret"

3. Tambahkan 3 secrets:

| Name | Value |
|------|-------|
| `VERCEL_TOKEN` | Token dari Vercel |
| `VERCEL_ORG_ID` | Organization ID dari Vercel |
| `VERCEL_PROJECT_ID` | Project ID dari Vercel |

Klik "Add secret" untuk setiap.

#### 3. Verifikasi

File `.github/workflows/deploy-vercel.yml` sudah ada dan akan:
- Build otomatis saat push ke `main`
- Deploy ke production
- Preview untuk pull request

### Workflow

1. **Push code ke GitHub**:
   ```bash
   git add .
   git commit -m "Update blog content"
   git push origin main
   ```

2. **GitHub Actions trigger**:
   - Build project
   - Run tests
   - Deploy ke Vercel

3. **Verifikasi deployment**:
   - Di GitHub: Lihat Actions tab
   - Di Vercel: Lihat deployment history
   - Site auto-update dalam 3-5 menit

---

## 🌍 Konfigurasi Domain Custom

### 1. Beli Domain

Beli dari registrar:
- Namecheap
- GoDaddy
- Domain.com
- Google Domains
- Etc.

### 2. Setup di Vercel

1. Vercel Dashboard → Project → **Settings** → **Domains**

2. Klik "Add"

3. Masukkan domain: `yourdomain.com`

4. Pilih opsi routing

5. Vercel akan show DNS records untuk ditambahkan

### 3. Update DNS Records

Di registrar domain Anda (misal Namecheap):

1. Login ke akun registrar
2. Manage DNS untuk domain
3. Add/Update records dari Vercel:
   - Type: Biasanya `CNAME` atau `A`
   - Value: Dari Vercel

4. Tunggu propagasi (15 menit - 24 jam)

### 4. Verifikasi

- [ ] Kunjungi `https://yourdomain.com`
- [ ] Site harus muncul
- [ ] SSL certificate auto-install

---

## 🐛 Troubleshooting

### Build Error: "npm command not found"

**Solusi:**
1. Install Node.js dari https://nodejs.org/
2. Restart terminal
3. Verifikasi: `node --version`

### Deployment Stuck / Pending

**Solusi:**
1. Di Vercel Dashboard, klik "Cancel"
2. Tunggu 1-2 menit
3. Klik "Redeploy" atau push ulang ke GitHub

### Site Muncul Tapi Tidak Benar

**Solusi:**
1. Clear browser cache: `Ctrl+Shift+Delete`
2. Buka dengan private/incognito window
3. Cek Vercel logs:
   - Dashboard → Deployments → Click deployment → Logs

### Environment Variables Tidak Bekerja

**Solusi:**
1. Verifikasi variabel di Vercel Dashboard: Settings → Environment Variables
2. Pastikan untuk Production, Preview, Development
3. Klik "Redeploy" setelah update
4. Cek `.env.local` lokal juga

### RSS/Sitemap 404

**Solusi:**
1. SITE_URL harus benar di environment variables
2. Redeploy setelah update SITE_URL
3. Wait 5 menit untuk cache invalidation

### Domain Not Working

**Solusi:**
1. DNS propagation takes time (up to 24 hours)
2. Verify DNS records di Vercel Dashboard
3. Use nslookup command: `nslookup yourdomain.com`
4. Contact domain registrar if still not working

---

## 🎯 Optimization Tips

### 1. Performance
- Use Vercel Analytics: Dashboard → Analytics
- Monitor Core Web Vitals
- Check PageSpeed Insights

### 2. Monitoring
- Enable error tracking: Vercel Dashboard → Monitoring
- Set up alerts untuk failed deployments
- Check build times

### 3. Cost
- Free tier mencakup 100GB bandwidth/month
- Suitable untuk blog personal
- Auto-scaling included

---

## 📚 Useful Links

| Resource | Link |
|----------|------|
| Vercel Docs | https://vercel.com/docs |
| Astro Docs | https://docs.astro.build |
| Astro + Vercel | https://docs.astro.build/en/guides/deploy/vercel/ |
| Vercel CLI | https://vercel.com/cli |
| GitHub Actions | https://docs.github.com/en/actions |

---

## ✅ Checklist Akhir

Sebelum deploy ke production:

- [ ] `npm install` selesai tanpa error
- [ ] `npm run build` berhasil
- [ ] `npm run dev` berjalan normal
- [ ] Environment variables sudah diset
- [ ] GitHub repository sudah dibuat dan diisi
- [ ] Vercel project sudah di-link
- [ ] DNS records sudah diupdate (jika domain custom)
- [ ] Semua pages terupdate dan benar
- [ ] Dark mode berfungsi
- [ ] Mobile responsive
- [ ] Links dan navigation bekerja

---

## 🎉 Selesai!

Blog Anda sekarang live di Vercel. Setiap kali Anda push ke GitHub, site auto-update.

Untuk update content:
```bash
# Edit blog posts di src/content/blog/
# Commit dan push
git add .
git commit -m "Add new post"
git push origin main

# Vercel auto-deploy within 5 minutes
```

**Happy blogging!** 🚀

