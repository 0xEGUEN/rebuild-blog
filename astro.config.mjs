import { defineConfig } from 'astro/config';
import react from '@astrojs/react';
import sitemap from '@astrojs/sitemap';
import mdx from '@astrojs/mdx';
import tailwind from '@astrojs/tailwind';

// https://astro.build/config
const SITE_URL = process.env.SITE_URL || 'https://yourdomain.vercel.app';

export default defineConfig({
  site: SITE_URL,
  output: 'static',
  integrations: [
    react(),
    sitemap(),
    mdx(),
    tailwind({
      config: {
        applyBaseStyles: false,
      },
    }),
  ],
  markdown: {
    syntaxHighlight: 'shiki',
    shikiConfig: {
      theme: 'github-dark',
      wrap: true,
      langs: [],
    },
    remarkPlugins: ['remark-toc'],
    rehypePlugins: ['rehype-pretty-code'],
  },
  redirects: {
    '/': '/blog',
  },
});
