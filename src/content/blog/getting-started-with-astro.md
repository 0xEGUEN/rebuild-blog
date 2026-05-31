---
title: Getting Started with Astro
description: Learn how to build fast, modern websites with Astro and static site generation.
author: Author Name
publishedAt: 2024-05-31
category: Technology
tags: [astro, web development, javascript, tutorial]
featured: true
image: /blog-getting-started.jpg
imageAlt: Astro Logo and Code
---

# Getting Started with Astro

Astro is a modern web framework that lets you build faster websites with less JavaScript. In this guide, we'll explore the basics and get you started.

## What is Astro?

Astro is a static site generator that ships zero JavaScript by default. It uses a component-based architecture similar to React, but renders components to static HTML at build time.

### Key Features

- **Zero JavaScript by Default**: Your website loads fast because Astro sends HTML, not JavaScript
- **Components**: Use components from React, Vue, Svelte, and other frameworks together in the same project
- **Content Collections**: Organize and validate your Markdown content with a simple schema
- **Fast Build Times**: Astro's optimized build pipeline is incredibly fast

## Installation

Getting started with Astro is easy. Run the following command:

```bash
npm create astro@latest -- --template blog
```

This creates a new Astro project with a blog template.

## Project Structure

```
project/
├── src/
│   ├── components/    # Reusable components
│   ├── content/       # Markdown content
│   ├── layouts/       # Layout templates
│   ├── pages/         # Page routes
│   └── styles/        # Global styles
├── public/            # Static assets
├── astro.config.mjs   # Astro configuration
└── package.json       # Dependencies
```

## First Steps

### 1. Create a Page

Create a new file in `src/pages/` called `hello.astro`:

```astro
---
import Layout from '../layouts/Layout.astro';
---

<Layout title="Hello World">
  <h1>Hello, World!</h1>
  <p>This is my first Astro page!</p>
</Layout>
```

### 2. Run the Dev Server

```bash
npm run dev
```

Visit `http://localhost:3000/hello` to see your page.

### 3. Add Some Content

Create a Markdown file in `src/content/blog/` with your frontmatter:

```markdown
---
title: My First Post
description: This is my first blog post!
author: Your Name
publishedAt: 2024-05-31
---

# Welcome

This is my first blog post using Astro's content collections!
```

## Why Choose Astro?

- **Performance**: Less JavaScript means faster websites
- **Flexibility**: Use any UI framework or none at all
- **Developer Experience**: Write components in `.astro` files with a familiar syntax
- **Scalability**: Perfect for blogs, documentation sites, and more

## Next Steps

- Explore [Astro documentation](https://docs.astro.build)
- Integrate with your favorite UI framework
- Deploy to Vercel, Netlify, or any static host

Happy building!
