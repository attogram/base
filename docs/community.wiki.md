[base](../../README.md) > [docs](../README.md) > [community](./community.md) > Community Wiki

# Community Wiki

A community wiki is a powerful tool for collaborative documentation.
It allows any member of your community to contribute their knowledge, creating a
rich, living resource that evolves over time.

This guide explains how to leverage the repository itself to create a simple
and effective community-managed wiki.

## How it Works

Instead of using a separate system, this approach uses the `docs/` directory of
your repository as the wiki.
This has several advantages:

-   **No Extra Tools:** Everything is managed through the standard GitHub
    workflow (pull requests, reviews, etc.).
-   **Version Controlled:** All changes to the wiki are tracked in your Git
    history.
-   **Community-Driven:** Anyone can contribute by submitting a pull request.

## Setting Up Your Wiki

1.  **Create a Namespace:** As we've done here, you can create a `community.wiki`
    file to serve as the main entry point for your wiki.
    This keeps the wiki content organized within its own namespace.

2.  **Add an Index:** Your main `community.wiki.md` file should act as an index,
    linking to all the individual wiki pages.

3.  **Encourage Contributions:** In your `CONTRIBUTING.md` and community
    channels, let people know that the wiki is open for contributions.

## Example Wiki Structure

Your wiki could be organized with a structure like this:

```
docs/
├── community.wiki.md         # The main wiki index page
├── community.wiki.faq.md     # A Frequently Asked Questions page
├── community.wiki.glossary.md  # A glossary of terms
└── community.wiki.tutorials/ # A directory for community-submitted tutorials
    ├── ...
    └── ...
```

## Contribution Workflow

Here's how a community member would add a new page to the wiki:

1.  **Fork the repository.**
2.  **Create a new file** in the `docs/` directory, following the
    `community.wiki.<topic>.md` naming convention.
3.  **Write the content** for their new wiki page.
4.  **Add a link** to their new page in the `docs/community.wiki.md` index file.
5.  **Submit a pull request** with their changes.

Maintainers can then review the contribution, suggest changes, and merge it
into the project.

By using your own repository as a wiki, you create a low-friction way for your
community to share their knowledge, building a valuable and lasting resource for
everyone.
