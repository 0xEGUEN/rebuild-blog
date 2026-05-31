export interface BlogPost {
  title: string;
  description: string;
  author: string;
  publishedAt: Date;
  updatedAt?: Date;
  category: string;
  tags: string[];
  featured?: boolean;
  draft?: boolean;
  image?: string;
  imageAlt?: string;
  slug?: string;
}

export interface BlogCollectionEntry {
  id: string;
  slug: string;
  body: string;
  collection: string;
  data: BlogPost;
}
