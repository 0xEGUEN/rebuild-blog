import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';
import sitemap from '@astrojs/sitemap';
import tailwind from '@astrojs/tailwind';

// https://astro.build/config
const SITE_URL = process.env.SITE_URL || 'https://yourdomain.vercel.app';

export default defineConfig({
  site: SITE_URL,
  output: 'static',
  integrations: [
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
    },
  },
});
