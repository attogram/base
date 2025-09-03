# Creating "Add Your Story" Links

You can create special links that pre-fill a new file in a GitHub repository with template content. This is a powerful way to encourage community contributions, such as adding a personal story, a testimonial, or a "moment".

Here is an example of a link that allows a user to add their own "Funny AI Moment" to a repository:

```markdown
[<kbd>Click Here to Add Your Funny AI Moment</kbd>](https://github.com/{USERNAME}/{REPONAME}/new/main/_moments/?filename=2025-09-03-my-new-story/index.md&value=---%0Alayout%3A%20post%0Atitle%3A%20%22%5BYOUR%20TITLE%20HERE%5D%22%0Adate%3A%202025-09-03%0Adescription%3A%20%22%5BA%20one-sentence%20summary%20of%20your%20story%5D%22%0Aauthor%3A%20%22%5BYour%20Name%20or%20GitHub%20Username%5D%22%0A---%0A%0A%5BYOUR%20FULL%20STORY%20HERE.%20Write%20as%20much%20as%20you%20want!%5D%0A%0A**How%20to%20add%20images%3A**%0A1.%20After%20creating%20this%20file%2C%20drag%20%26%20drop%20your%20images%20into%20the%20folder.%0A2.%20Link%20to%20them%20with%20%60%21%5BImage%20description%5D(./your-image-name.png)%60)
```

## How It Works

The link is a standard URL to create a new file in a GitHub repository, but with two important query parameters:

- `filename`: This specifies the directory and name of the file to be created. Notice the use of a placeholder date and `my-new-story/index.md`. This encourages users to create a new directory for each story, which is good for organization, especially if they want to add images.
- `value`: This contains the URL-encoded content that will pre-fill the new file.

## Deconstructing the `value` Parameter

The `value` parameter is the heart of the template. Let's look at the decoded version of the content:

```yaml
---
layout: post
title: "[YOUR TITLE HERE]"
date: 2025-09-03
description: "[A one-sentence summary of your story]"
author: "[Your Name or GitHub Username]"
---

[YOUR FULL STORY HERE. Write as much as you want!]

**How to add images:**
1. After creating this file, drag & drop your images into the folder.
2. Link to them with `![Image description](./your-image-name.png)`
```

This is a standard Jekyll post format with YAML front matter. The placeholders guide the user on what to fill in.

## How to Create Your Own Link

1.  **Write your template content.** Write the text you want to pre-fill in the new file. Use placeholders like `[REPLACE THIS]` to guide the user.
2.  **URL-encode the content.** You must encode your template content so it can be safely included in a URL. There are many online tools for URL encoding.
3.  **Construct the URL.**
    - Start with `https://github.com/{USERNAME}/{REPONAME}/new/{BRANCH}/`. Replace the placeholders with the target repository's information.
    - Add the `filename` parameter: `?filename=path/to/your/new-file.md`.
    - Add the `value` parameter: `&value={YOUR_ENCODED_CONTENT}`.
4.  **Create the Markdown link.** Wrap your URL in a Markdown link `[Link Text](URL)` to make it easy for users to click. Using `<kbd>` tags for the link text can make it look more like a button.
