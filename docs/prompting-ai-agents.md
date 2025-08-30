# Prompting AI Agents for `attogram/base` Projects

When using AI agents to create or update a repository based on `attogram/base`, clear and specific instructions are crucial for a successful outcome. This guide provides a template and details to help you craft effective prompts.

## The Ideal Intro-Prompt

Here is an easy-to-copy introduction that you can add to the beginning of your own prompts. This will give the AI agent the core context it needs to work within the `attogram/base` philosophy.

```
This project builds upon the attogram/base template. Please integrate the new website content without removing the core base repository files or structure.

The main homepage for the site is `README.md`, and all new content should be linked from there. You can create new directories for your content as needed, but please do not modify the core `base` files and directories (such as `.github`, `docs`, `docker`, etc.).

Please use the existing Jekyll setup for the site, which builds from the root directory. Do not install other static site generators like Eleventy.

Finally, please look for and follow any instructions in an `AGENTS.md` file, as it contains project-specific guidelines for AI agents.
```
