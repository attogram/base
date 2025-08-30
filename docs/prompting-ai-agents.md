# Prompting AI Agents for `attogram/base` Projects

When using AI agents to create or update a repository based on `attogram/base`, clear and specific instructions are crucial for a successful outcome. This guide provides a template and details to help you craft effective prompts.

## The Ideal Intro-Prompt

Here is an easy-to-copy introduction that you can add to the beginning of your own prompts. This will give the AI agent the core context it needs to work within the `attogram/base` philosophy.

```
This project builds upon the attogram/base template. Please integrate the new website content without removing the core base repository files or structure.

All new website content (layouts, CSS, markdown articles, images, etc.) should be created within the /docs directory, which is already configured for GitHub Pages.

Please use the existing Jekyll setup for the site. Do not install other static site generators like Eleventy.

Finally, please look for and follow any instructions in an `AGENTS.md` file, as it contains project-specific guidelines for AI agents.
```

## Deconstructing the Prompt: Why It Works

Let's break down why each part of this intro-prompt is important for guiding an AI agent effectively.

### 1. Start with the Core Intent

> "This project builds upon the attogram/base template. Please integrate the new website content without removing the core base repository files or structure."

This opening statement immediately sets the context. It tells the agent two critical things:

- **It's a `base` template project:** This signals that there's an existing structure and a set of conventions to follow.
- **Preserve the core:** This is a direct instruction to avoid deleting or altering the foundational files of the `base` template. The goal is to _add_ to the project, not to rebuild it from scratch.

### 2. Specify the Content's Home

> "All new website content (layouts, CSS, markdown articles, images, etc.) should be created within the /docs directory, which is already configured for GitHub Pages."

This instruction prevents the agent from making incorrect assumptions about where to place new files.

- **Clear Directory:** It points the agent to the exact location (`/docs`) for all new content.
- **Pre-configured:** It informs the agent that this directory is already set up for a specific purpose (GitHub Pages), which implies that it shouldn't need to configure deployment or build processes for that directory.

### 3. Confirm the Technology Stack

> "Please use the existing Jekyll setup for the site. Do not install other static site generators like Eleventy."

This is a crucial constraint that prevents the AI from going down the wrong path.

- **Use Existing Tools:** It explicitly names the tool to use (Jekyll), which is the default for GitHub Pages.
- **Prevent New Installations:** It warns the agent _not_ to install alternative tools (like Eleventy). This saves time and avoids introducing unnecessary complexity or conflicts into the project.

## The "Base Philosophy"

Your instruction to an AI to "keep your work in the 'base philosophy'" is a powerful way to summarize these points. It encourages the agent to:

- **Build upon, don't replace:** The `base` is a foundation. New features should feel like an extension of that foundation.
- **Respect the structure:** The existing file and directory layout is intentional. New work should fit within it.
- **Use the provided tools:** The `base` template comes with a set of tools and configurations. Stick to them unless you have a specific reason to change them.

### 4. Remind the AI about `AGENTS.md`

> "Finally, please look for and follow any instructions in an `AGENTS.md` file, as it contains project-specific guidelines for AI agents."

Repositories may contain an `AGENTS.md` file, which provides specific instructions for AI agents working on the codebase. It's a way for developers to give you, the AI, a cheat sheet for the project.

- **Explicit Reminder:** Even though an advanced AI should look for this file, an explicit reminder ensures it's not forgotten.
- **Sets Expectations:** It signals that the project has its own set of conventions and rules that go beyond the general `base` philosophy.

By following these prompting guidelines, you can help AI agents understand your goals clearly and deliver results that align with the `attogram/base` methodology.
