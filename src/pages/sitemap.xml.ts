import { SITE_URL } from '../constants/site';

interface Page {
  url: string;
  lastmod: string;
  priority: number;
}

const pages: Page[] = [
  { url: '/', lastmod: new Date().toISOString().split('T')[0], priority: 1.0 },
  { url: '/blog/', lastmod: new Date().toISOString().split('T')[0], priority: 0.9 },
  { url: '/about/', lastmod: new Date().toISOString().split('T')[0], priority: 0.7 },
  { url: '/projects/', lastmod: new Date().toISOString().split('T')[0], priority: 0.7 },
  { url: '/contact/', lastmod: new Date().toISOString().split('T')[0], priority: 0.6 },
];

export async function GET() {
  const sitemap = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
${pages.map(page => `  <url>
    <loc>${SITE_URL}${page.url}</loc>
    <lastmod>${page.lastmod}</lastmod>
    <priority>${page.priority}</priority>
  </url>`).join('\n')}
</urlset>`;

  return new Response(sitemap, {
    headers: {
      'Content-Type': 'application/xml; charset=utf-8',
    },
  });
}

