# Use Case: A Simple and Powerful Publishing Platform

This repository is pre-configured to act as a simple, powerful, and free website publishing platform using GitHub Pages. This guide walks you through how to use it to create and manage your own site.

## Part 1: Choosing Your Website's Design

Your website's look and feel is controlled by a "theme". This repository uses Jekyll, a static site generator, which has great support for themes.

### How to Change Your Theme

You can change your website's theme with a single line of code.

1.  Open the [`_config.yml`](../_config.yml) file in the root of your repository.
2.  You will see a line: `theme: jekyll-theme-primer`.
3.  To change the theme, simply replace `jekyll-theme-primer` with the name of another supported theme. For example: `theme: jekyll-theme-minimal`.
4.  Commit the change, and your site will be rebuilt with the new theme.

### Supported Themes

GitHub Pages officially supports a number of themes. You can preview them by visiting their repositories.

| Theme Name   | How to Use It ([`_config.yml`](../_config.yml)) | Preview Link                                                   |
| :----------- | :---------------------------------------------- | :------------------------------------------------------------- |
| Architect    | `theme: jekyll-theme-architect`                 | [View on GitHub](https://github.com/pages-themes/architect)    |
| Cayman       | `theme: jekyll-theme-cayman`                    | [View on GitHub](https://github.com/pages-themes/cayman)       |
| Dinky        | `theme: jekyll-theme-dinky`                     | [View on GitHub](https://github.com/pages-themes/dinky)        |
| Hacker       | `theme: jekyll-theme-hacker`                    | [View on GitHub](https://github.com/pages-themes/hacker)       |
| Leap Day     | `theme: jekyll-theme-leap-day`                  | [View on GitHub](https://github.com/pages-themes/leap-day)     |
| Merlot       | `theme: jekyll-theme-merlot`                    | [View on GitHub](https://github.com/pages-themes/merlot)       |
| Midnight     | `theme: jekyll-theme-midnight`                  | [View on GitHub](https://github.com/pages-themes/midnight)     |
| Minimal      | `theme: jekyll-theme-minimal`                   | [View on GitHub](https://github.com/pages-themes/minimal)      |
| Modernist    | `theme: jekyll-theme-modernist`                 | [View on GitHub](https://github.com/pages-themes/modernist)    |
| Primer       | `theme: jekyll-theme-primer`                    | [View on GitHub](https://github.com/pages-themes/primer)       |
| Slate        | `theme: jekyll-theme-slate`                     | [View on GitHub](https://github.com/pages-themes/slate)        |
| Tactile      | `theme: jekyll-theme-tactile`                   | [View on GitHub](https://github.com/pages-themes/tactile)      |
| Time Machine | `theme: jekyll-theme-time-machine`              | [View on GitHub](https://github.com/pages-themes/time-machine) |

### Advanced: Using Other Themes

You are not limited to the themes above. Using the `remote_theme` option, you can use almost any public Jekyll theme hosted on GitHub.

To do this, change your [`_config.yml`](../_config.yml) to use `remote_theme` instead of `theme`, and provide the theme's repository name.

```yaml
# remote_theme: owner/repository-name
remote_theme: jekyll/minima
```

### Advanced: Customizing a Theme's CSS

If you want to add your own custom styles without creating a whole new theme, you can override the theme's CSS.

1.  Create a file named `/assets/css/style.scss`.
2.  Add the following lines to the top of the file. This imports the theme's default stylesheet.

    ```scss
    ---
    ---

    @import "{{ site.theme }}";
    ```

3.  Below the `@import` line, you can add any custom CSS you want.

## Part 2: Creating and Editing Content

### The Publishing Workflow

Publishing is as simple as editing text files.

1.  **Edit or Create Files:** Edit an existing Markdown (`.md`) file or create a new one.
2.  **Commit and Push:** Save and push your changes to the `main` branch.
3.  **Done!** The website will automatically rebuild and your changes will be live in a minute or two.

### Homepage and Other Pages

- **Homepage:** The content of your site's homepage is the [`README.md`](../README.md) file.
- **Other Pages:** Any other `.md` file in your repository becomes a page on your site. For example, `contact.md` will be available at `your-site.com/contact`.

### Working with Markdown and HTML

This publishing platform fully supports both Markdown (`.md`) and standard HTML (`.html`) files. You can choose to write your pages in either format.

- **For simple content**, like blog posts or basic documentation, Markdown is usually faster and easier to write.
- **For complex layouts** that require specific HTML structures or CSS classes, you can write the page directly in HTML.

You can create new `.html` files or add existing ones to the repository, and they will be published as pages on your site.

### Organizing Your Site

You can create folders to organize your content. A file at `docs/about.md` will be available at `your-site.com/docs/about`.

To link between pages, use relative links in your Markdown.

It's best to use paths relative to the current file (e.g., starting with `./` or `../`). This ensures the links work correctly both when browsing the repository on the GitHub website and on your final published GitHub Pages site.

For example, from your root [`README.md`](../README.md), you could link to a file in `docs` like this:

```markdown
[Read our About page](./docs/about.md)
```

## Part 3: Mastering Your Content with Advanced Formatting

Markdown is designed to be simple, but it has powerful features for creating rich content.

### Code Blocks with Syntax Highlighting

You can create code blocks by wrapping your code in triple backticks. You can also specify the language for syntax highlighting.

````markdown
```javascript
function helloWorld() {
  console.log("Hello, world!");
}
```
````

### Tables

You can create tables to organize data.

```markdown
| Feature         | Support Level | Notes                               |
| :-------------- | :-----------: | :---------------------------------- |
| Themes          |     Good      | Several supported themes available. |
| Advanced HTML   |    Limited    | Only whitelisted tags are allowed.  |
| Markdown Tables |   Excellent   | Full support for GFM tables.        |
```

### Task Lists

Create checklists in your content.

```markdown
- [x] Draft the documentation.
- [ ] Add more examples.
- [ ] Request a review.
```

### Alerts and Blockquotes

You can use a special blockquote syntax to create styled "alerts" that highlight important information.

```markdown
> [!NOTE]
> This is a note. It contains useful information users should know.

> [!WARNING]
> This is a warning. It advises about risks or negative outcomes.
```

### Working with Images and Videos

You can easily include images and videos to make your content more engaging.

#### Images

The standard Markdown syntax for an image is `![Alt Text](URL)`.

- **Local Images:** If you add an image to your repository (e.g., in an `assets` folder), you can link to it with a relative path.
  ```markdown
  ![A diagram of our process](./assets/process-diagram.png)
  ```
- **Remote Images:** You can also link directly to an image hosted on another website.
  ```markdown
  ![A photo of the earth from space](https://example.com/path/to/earth.jpg)
  ```

#### Embedding Videos

While you can't embed a video player directly into a Markdown file, you can use a clever trick to create a clickable thumbnail that links to the video. This is the best way to include YouTube videos.

1.  Find your YouTube video's ID. It's the string of characters at the end of the URL (e.g., `iadzYtX4ERU`).
2.  Use the following Markdown snippet, replacing `YOUTUBE_VIDEO_ID_HERE` with your video's ID.

```markdown
[![Watch the video](https://img.youtube.com/vi/YOUTUBE_VIDEO_ID_HERE/0.jpg)](https://www.youtube.com/watch?v=YOUTUBE_VIDEO_ID_HERE)
```

This code displays the video's thumbnail image and makes it a link to the video on YouTube.

### Page Titles and SEO

By default, GitHub Pages uses a plugin called `jekyll-seo-tag` to automatically add common search engine optimization (SEO) metadata to your site. You can control this metadata to improve how your site appears in search results and on social media.

#### Setting the Title and Description for a Single Page

To set a custom title and description for a specific page, add a "front matter" block to the very top of your `.md` file. Front matter is a block of YAML code between two `---` lines.

For example, you could add this to the top of a file named `about.md`:

```yaml
---
title: About Our Company
description: Learn about our history, our team, and our mission.
image: /assets/our-team-photo.jpg
---
# About Us

This is the rest of your page content...
```

- `title`: This will be used for the page's `<title>` tag (what you see in the browser tab).
- `description`: This will be used for the page's meta description (the snippet shown in search results).
- `image`: If you provide a path to an image, it will be used for social media previews (e.g., when you share the link on Twitter or Facebook).

#### Setting a Site-Wide Title and Description

You can also set a default title and description for your entire site in the [`_config.yml`](../_config.yml) file.

```yaml
title: My Awesome Project
description: A website about my awesome project and other cool things.
```

The page-specific front matter will always override the site-wide settings in `_config.yml`.

### Using HTML for More Control

While most HTML tags are stripped for security, GitHub Pages allows a "whitelist" of safe tags for advanced formatting. This means you can't use just any HTML, but you can do some cool things.

A great example is creating a collapsible section using `<details>` and `<summary>`.

```html
<details>
  <summary>Click here to see the details!</summary>

  This content is hidden until you click the summary. You can put any Markdown
  content in here, including lists, code blocks, or images.
</details>
```

Other useful HTML tags that are generally allowed include `<sub>` for <sub>subscript</sub>, `<sup>` for <sup>superscript</sup>, and `<kbd>` for styling keyboard inputs like <kbd>Ctrl</kbd>+<kbd>C</kbd>.

---

## Understanding the Limitations

GitHub Pages is a powerful tool, but it's important to understand its limitations.

- **Static Sites Only:** This is the most important limitation. GitHub Pages cannot run server-side code (like PHP, Python, or a database). It can only serve static files: HTML, CSS, JavaScript, images, etc. This means you cannot have features like a user login system, a shopping cart, or a server-side contact form.

- **Usage Limits:** For repositories on the free plan, GitHub Pages has some soft limits:
  - **Size:** Your repository should ideally stay under 1GB.
  - **Bandwidth:** Your site has a soft limit of 100GB of bandwidth per month.
  - **Builds:** Your site will be rebuilt up to 10 times per hour. Pushing many small commits in a short period might cause some builds to be skipped.

- **No Custom Jekyll Plugins:** GitHub Pages only supports a specific list of Jekyll plugins. You cannot use custom or third-party plugins that are not on [this list](https://pages.github.com/versions/).

- **Site Visibility:** If your repository is public, your GitHub Pages site will be public. If your repository is private, your site will also be public unless you have a paid GitHub plan (Pro, Team, or Enterprise).

---

## Advanced Topics

### Previewing Your Site Locally

The default workflow is to push changes to your `main` branch and wait for GitHub to publish them. For larger changes, you may want to preview your site on your own computer before publishing.

This is possible, but it is an advanced topic that requires installing some software on your machine (specifically, Ruby and Jekyll).

While the setup can be technical, the benefit is that you can run a local web server that behaves exactly like GitHub Pages. You can see your changes instantly at `http://localhost:4000` without having to commit and push every time.

To learn how to do this, follow the official guide from GitHub:

- **[Testing your GitHub Pages site locally with Jekyll](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/testing-your-github-pages-site-locally-with-jekyll)**

### Creating a Navigation Menu

Many themes allow you to create a persistent navigation menu at the top of your site (e.g., "Home \\| About \\| Contact"). The implementation details depend on the theme, but it is often configured in the [`_config.yml`](../_config.yml) file.

For example, the popular "Minima" theme looks for a `header_pages` array in your `_config.yml`:

```yaml
# In _config.yml
header_pages:
  - about.md
  - contact.md
```

This would create a navigation menu with links to your "About" and "Contact" pages.

The default `primer` theme does not support this feature out-of-the-box. To add a navigation menu, you will need to switch to a different theme or add your own custom HTML layout.

**Always check the documentation for your chosen theme** to see what navigation features it supports and how to configure them.
