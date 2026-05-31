import { defineCollection, z } from 'astro:content';

const blogCollection = defineCollection({
  type: 'content',
  schema: z.object({
    title: z.string(),
    description: z.string(),
    author: z.string(),
    publishedAt: z.date(),
    updatedAt: z.date().optional(),
    category: z.string(),
    tags: z.array(z.string()),
    featured: z.boolean().optional().default(false),
    draft: z.boolean().optional().default(false),
    image: z.string().optional(),
    imageAlt: z.string().optional(),
  }),
});

export const collections = {
  blog: blogCollection,
};
