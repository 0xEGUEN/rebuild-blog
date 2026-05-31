export const SITE_NAME = process.env.SITE_TITLE || 'Blog Me';
export const SITE_DESCRIPTION = process.env.SITE_DESCRIPTION || 'A modern blog platform';
export const SITE_URL = process.env.SITE_URL || 'https://yourdomain.vercel.app';

export const AUTHOR_NAME = process.env.AUTHOR_NAME || 'Your Name';
export const AUTHOR_EMAIL = process.env.AUTHOR_EMAIL || 'your@email.com';
export const AUTHOR_TWITTER = process.env.AUTHOR_TWITTER || '@yourhandle';
export const AUTHOR_GITHUB = process.env.AUTHOR_GITHUB || 'yourgithub';

export const ITEMS_PER_PAGE = 10;
export const CATEGORIES = [
  { name: 'Technology', slug: 'technology' },
  { name: 'Lifestyle', slug: 'lifestyle' },
  { name: 'Tutorial', slug: 'tutorial' },
];
