# GitHub Workflows Documentation

This document explains the purpose and usage of the GitHub Actions workflows
included in this repository.

## [`ci.yml`](../.github/workflows/ci.yml)

- **Purpose:** This workflow runs on every push and pull request to the `main`
  branch.
  It uses [Prettier](https://prettier.io/) to check for consistent formatting
  in Markdown and YAML files, ensuring code quality and readability.
- **Triggers:** `push`, `pull_request` to `main`.

## [`pages.yml`](../.github/workflows/pages.yml)

- **Purpose:** This workflow builds and deploys the project's documentation as
  a GitHub Pages website.
  It uses the root [`README.md`](../README.md) as the homepage.
- **Triggers:** `push` to `main`, `workflow_dispatch`.

## [`release-on-tag.yml`](../.github/workflows/release-on-tag.yml)

- **Purpose:** This workflow automates the creation of GitHub Releases.
- **Triggers:** `push` of a new tag matching the pattern `v*.*.*`.
- **Usage:**
  1.  Edit the [`.github/RELEASE_TITLE.txt`](../.github/RELEASE_TITLE.txt)
      and [`.github/RELEASE_BODY.md`](../.github/RELEASE_BODY.md) files to
      describe the release.
      You can use the `${TAG}` variable.
  2.  Commit these changes.
  3.  Push a new tag (e.g., `git tag v1.0.0 && git push origin v1.0.0`).
  4.  The workflow will automatically create a new release with your notes, a
      full changelog, and a link to the diff.
