# Blog Me - Modern Astro Blog Platform

A high-performance, feature-rich blog website built with **Astro**, **TypeScript**, and **TailwindCSS**. Inspired by modern web architecture principles with focus on performance, SEO, and maintainability.

## 🌟 Features

### Core Features
- ⚡ **Static Site Generation** - Lightning-fast performance
- 🎨 **Dark Mode Support** - Built-in theme switching
- 📱 **Fully Responsive** - Mobile, tablet, and desktop optimized
- 🔍 **Full-text Search** - Client-side search functionality
- 📚 **Content Collections** - Type-safe markdown blog posts
- 🏷️ **Tags & Categories** - Organize content by topics
- 📖 **Pagination** - Efficient content navigation
- 📊 **Reading Time** - Automatic reading time calculation

### SEO & Metadata
- 🔗 **RSS Feed** - Subscribe to updates
- 🗺️ **Sitemap** - Automatic sitemap generation
- 📝 **OpenGraph & Twitter Cards** - Social media optimization
- 📋 **Structured Data** - JSON-LD schema markup
- 🤖 **Robots.txt** - Search engine optimization

### Content Features
- 📑 **Table of Contents** - Automatic TOC generation
- 🎨 **Syntax Highlighting** - Code block formatting
- 📌 **Featured Posts** - Highlight important articles
- ⬅️➡️ **Previous/Next Navigation** - Post navigation
- 🔗 **Social Share Buttons** - Easy sharing
- 📷 **Image Optimization** - Automatic image processing

## 📁 Project Structure

```
blog-me/
├── src/
│   ├── components/           # Reusable components
│   │   ├── shared/          # Shared components (Header, Footer, etc)
│   │   └── blog/            # Blog-specific components
│   ├── content/
│   │   ├── blog/            # Blog post markdown files
│   │   └── config.ts        # Content collection schema
│   ├── layouts/             # Layout templates
│   ├── pages/               # Route pages
│   ├── styles/              # Global styles
│   ├── types/               # TypeScript type definitions
│   ├── utils/               # Utility functions
│   └── constants/           # Constants and configuration
├── public/                  # Static assets
├── astro.config.mjs         # Astro configuration
├── tsconfig.json            # TypeScript configuration
├── tailwind.config.js       # Tailwind CSS configuration
├── postcss.config.js        # PostCSS configuration
└── package.json             # Dependencies
```

## 🚀 Quick Start

### 1. Install Dependencies

```bash
npm install
# or
yarn install
# or
pnpm install
```

### 2. Configure Environment

```bash
cp .env.example .env.local
```

Edit `.env.local` with your settings:
- `SITE_URL`: Your domain
- `AUTHOR_NAME`: Your name
- `SITE_TITLE`: Blog title

### 3. Run Development Server

```bash
npm run dev
```

The site will be available at `http://localhost:3000`

### 4. Create a Blog Post

Create a markdown file in `src/content/blog/`:

```markdown
---
title: "My First Blog Post"
description: "This is a sample blog post"
author: "Your Name"
publishedAt: 2024-05-31
category: "Technology"
tags: ["astro", "blog", "tutorial"]
featured: false
image: "/images/post.jpg"
imageAlt: "Post cover image"
---

# Hello World

This is your blog post content...
```

### 5. Build for Production

```bash
npm run build
npm run preview
```

## 🛠️ Configuration

### Astro Config (`astro.config.mjs`)
- **Site URL**: Update in the config
- **Markdown**: Syntax highlighting and plugins configured
- **Integrations**: React, Sitemap, MDX, Tailwind

### Tailwind Config (`tailwind.config.js`)
- **Dark Mode**: Class-based dark mode
- **Colors**: Extended color palette
- **Animations**: Fade and slide animations
- **Typography**: Plugin for styled markdown

### TypeScript Paths (`tsconfig.json`)
```typescript
// Use aliases for imports
import Button from '@components/Button';
import { formatDate } from '@utils/date';
import type { Post } from '@types/blog';
```

## 📝 Content Collections

### Blog Post Schema

All blog posts in `src/content/blog/` follow this schema:

```typescript
{
  title: string              // Post title
  description: string        // Short description
  author: string            // Author name
  publishedAt: Date         // Publication date
  updatedAt?: Date          // Last update date
  category: string          // Post category
  tags: string[]            // Array of tags
  featured?: boolean        // Featured post
  draft?: boolean           // Draft status
  image?: string            // Cover image URL
  imageAlt?: string         // Alt text for image
}
```

## 🎯 Page Routes

### Static Pages
- `/` - Home page with featured posts and latest articles
- `/blog` - Blog listing with search and filters
- `/blog/[slug]` - Individual blog post
- `/about` - About page
- `/projects` - Projects showcase
- `/contact` - Contact form
- `/rss.xml` - RSS feed
- `/sitemap.xml` - Sitemap

## 🔧 Utilities

### Available Utilities
- `@utils/date` - Date formatting
- `@utils/blog` - Blog post operations
- `@utils/search` - Search functionality
- `@utils/seo` - SEO helpers
- `@utils/remark-reading-time` - Reading time calculation

## 🌙 Dark Mode

Dark mode is built-in and uses Tailwind's class-based approach:

```astro
<html class="dark">
  <!-- Content will use dark color scheme -->
</html>
```

## 📊 SEO Features

### Metadata
- Open Graph tags
- Twitter Card tags
- Canonical URLs
- Meta descriptions
- Author attribution

### Structured Data
- JSON-LD schema
- BlogPosting type
- Article schema

### Sitemaps & Feeds
- Automatic sitemap generation
- RSS feed support
- Dynamic routes indexed

## 🚀 Deployment

### Vercel Deployment

1. Push to GitHub
2. Import project in Vercel
3. Set environment variables
4. Deploy

```bash
# Build command: npm run build
# Output directory: dist
```

### Cloudflare Pages Deployment

1. Push to GitHub
2. Connect in Cloudflare Pages
3. Set build command: `npm run build`
4. Set output directory: `dist`

### Static Deployment (Netlify, GitHub Pages, etc.)

```bash
npm run build
# Deploy the `dist` folder
```

## 📦 Build Output

The `npm run build` command generates a fully static site in the `dist/` directory:

```
dist/
├── index.html
├── blog/
│   ├── index.html
│   └── post-slug/
│       └── index.html
├── about/
│   └── index.html
├── projects/
│   └── index.html
├── contact/
│   └── index.html
├── rss.xml
├── sitemap.xml
└── assets/
    ├── css/
    └── js/
```

## 🔐 Performance Optimizations

- ✅ 100% Static Site Generation
- ✅ Zero JavaScript on homepage
- ✅ Automatic image optimization
- ✅ CSS and JS minification
- ✅ Content-based cache busting
- ✅ Critical CSS inlining

## 📚 Technologies

- **Framework**: Astro 4.x
- **Language**: TypeScript 5.x
- **Styling**: TailwindCSS 3.x
- **Markdown**: Astro MDX
- **Icons**: Astro Icon
- **Date Handling**: date-fns
- **Syntax Highlighting**: Shiki + Rehype Pretty Code

## 📄 License

MIT License - Feel free to use this project for personal or commercial purposes.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit pull requests or open issues.

---

**Made with ❤️ using Astro**
