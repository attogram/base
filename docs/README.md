# Documentation

This directory contains the documentation for the `base` project.

- [The `base` Philosophy](./base.md) - An overview of the core principles and goals of this template.
- [Documentation Index](./README.md) - You are here.

## AI

- [Guiding AI with `AGENTS.md`](./ai.agents-md.md) - Using `AGENTS.md` to provide instructions to AI agents.
- [Prompting AI Agents](./ai.prompting.md) - How to effectively prompt AI agents.

## CI/CD

This repository includes several GitHub Actions workflows to automate various tasks. Each workflow is defined in a `.yml` file in the `.github/workflows` directory.

### CI Workflow

The CI (Continuous Integration) workflow is defined in `.github/workflows/ci.yml`.

**Triggers**

This workflow is triggered by the following events:

- `push` to the `main` branch
- `pull_request` to the `main` branch

**Jobs**

This job, named "Lint Code Base", runs on the latest version of Ubuntu. It performs the following steps:

1.  **Checkout Code**: Checks out the repository's code.
2.  **Setup Node.js**: Sets up Node.js version 20.
3.  **Install Prettier**: Installs the Prettier code formatter globally.
4.  **Run Prettier**: Runs `prettier --check .` to verify that all files in the repository are formatted correctly according to the Prettier configuration.

The purpose of this workflow is to ensure that all code pushed to the `main` branch or included in a pull request to `main` adheres to the project's coding style, as defined by Prettier. This helps maintain code consistency and quality.

### GitHub Pages Deployment Workflow

The GitHub Pages deployment workflow is defined in `.github/workflows/pages.yml`. Its purpose is to build and deploy the repository's content as a GitHub Pages website.

**Triggers**

This workflow is triggered by:

- A `push` to the `main` branch.
- A manual `workflow_dispatch` event, allowing it to be run from the Actions tab in GitHub.

**Permissions**

The workflow is granted the following permissions:

- `contents: read` to read the repository's content.
- `pages: write` to deploy to GitHub Pages.
- `id-token: write` to authenticate with GitHub Pages.

**Concurrency**

The workflow uses a concurrency group named `"pages"` to ensure that only one deployment runs at a time. If a new workflow run is triggered while another is in progress, the new run will be queued. However, in-progress runs are not cancelled.

**Jobs**

- **`build`**: This job runs on `ubuntu-latest` and performs the following steps to build the site:
    1.  **Checkout**: Checks out the repository's code.
    2.  **Setup Pages**: Configures the GitHub Pages environment.
    3.  **Build with Jekyll**: Uses the `actions/jekyll-build-pages` action to build the site with Jekyll. The source is the root of the repository (`./`), and the destination for the built site is `./_site`.
    4.  **Upload artifact**: Uploads the built site as a GitHub Pages artifact.

- **`deploy`**: This job also runs on `ubuntu-latest` and depends on the successful completion of the `build` job. It performs the following steps to deploy the site:
    1.  **Deploy to GitHub Pages**: Uses the `actions/deploy-pages` action to deploy the artifact from the `build` job to GitHub Pages. The environment is configured for `github-pages`, and the URL of the deployed site is made available as an output.

### Prettier Workflow

The Prettier workflow, defined in `.github/workflows/prettier.yml`, automates code formatting for the entire repository.

**Triggers**

This workflow is triggered on:

- `push` to the `main` branch
- Any `pull_request`

**Jobs**

This job runs on `ubuntu-latest` and performs the following steps:

1.  **Checkout Code**: Checks out the repository's code. It uses the `GITHUB_TOKEN` to allow the workflow to push changes back to the repository.
2.  **Setup Node.js**: Sets up Node.js version 20 and configures caching for `npm` to speed up dependency installation.
3.  **Install Dependencies**: Installs the project's dependencies, including Prettier, by running `npm install`.
4.  **Run Prettier**: Executes `npx prettier --write .` to format all files in the repository in-place.
5.  **Commit Changes**: Uses the `stefanzweifel/git-auto-commit-action` to check if Prettier made any changes. If there are changes, it commits them back to the current branch with the commit message "style: Format code with Prettier". This action is configured to check all files.

The purpose of this workflow is to ensure that all code in the repository is consistently formatted according to the Prettier rules, without requiring developers to run Prettier manually before committing.

### Release on Tag Workflow

The "Create Release" workflow, defined in `.github/workflows/release-on-tag.yml`, automates the process of creating a new GitHub release whenever a new tag is pushed to the repository.

**Triggers**

This workflow is triggered when a `push` event occurs with a tag that matches the pattern `v*.*.*` (e.g., `v1.0.0`, `v2.3.4`).

**Jobs**

This job runs on `ubuntu-latest` and has `contents: write` permissions to allow it to create a release. It performs the following steps:

1.  **Checkout code**: Checks out the repository's code. `fetch-depth: 0` is used to fetch all history for all branches and tags, which is necessary for generating the changelog.

2.  **Generate release notes**: This step generates the body of the release notes. It does this by:
    - Identifying the previous tag to determine the range of commits to include in the changelog.
    - Generating a changelog from the Git history between the previous tag and the current `HEAD`. The changelog format is a list of commit messages, each with a link to the corresponding commit.
    - Reading the release body template from `.github/RELEASE_BODY.md` and substituting the `${TAG}` placeholder with the current tag name.
    - Combining the user-provided body, the generated changelog, and a link to the full diff on GitHub into a single `FINAL_BODY` output.

3.  **Get Release Title**: This step reads the release title template from `.github/RELEASE_TITLE.txt`, replaces the `${TAG}` placeholder with the current tag name, and sets the result as an output named `title`.

4.  **Create Release**: This final step uses the `softprops/action-gh-release` action to create the GitHub release. It uses the title and body generated in the previous steps, and sets the `tag_name` to the tag that triggered the workflow. The release is created as a full release (not a draft or pre-release).

This workflow streamlines the release process by automating the creation of well-formatted, consistent GitHub releases based on Git tags.

### Scheduling Workflows with Cron

GitHub Actions allows you to automate tasks on a schedule, similar to the traditional cron utility in Unix-like systems. This is useful for recurring tasks like nightly builds, daily reports, or weekly dependency checks.

**How it Works**

You can trigger a workflow to run at specific UTC times using the `schedule` event. This event is configured with a `cron` expression.

```yaml
on:
  schedule:
    - cron: "30 5 * * 1-5"
```

This example triggers the workflow at 5:30 AM UTC every day from Monday to Friday.

**Understanding Cron Syntax**

A cron expression is a string of five fields that represent a time schedule.

```
┌───────────── minute (0 - 59)
│ ┌───────────── hour (0 - 23)
│ │ ┌───────────── day of the month (1 - 31)
│ │ │ ┌───────────── month (1 - 12)
│ │ │ │ ┌───────────── day of the week (0 - 6) (Sunday to Saturday)
│ │ │ │ │
│ │ │ │ │
* * * * *
```

**Special Characters**

- `*`: Matches any value. `* * * * *` runs every minute.
- `,`: Separates multiple values. `0,15,30,45 * * * *` runs at minutes 0, 15, 30, and 45.
- `-`: Defines a range of values. `0 9-17 * * *` runs every hour from 9 AM to 5 PM.
- `/`: Specifies a step value. `*/15 * * * *` runs every 15 minutes.

### Secrets Management in GitHub Actions

Properly managing secrets like API keys, access tokens, and other credentials is a critical aspect of security. This guide explains the best practice of using GitHub Actions secrets to handle sensitive information.

**Why Secret Management is Important**

**Never commit secrets directly to your repository.** Once a secret is in your git history, it should be considered compromised, even if you later remove it from the current version of the code. A public repository is visible to everyone, and malicious actors actively scan for exposed credentials.

**How to Use a Secret in a Workflow**

Once a secret is stored, you can access it in your workflow `.yml` files using the `secrets` context.

Here's an example of a workflow step that uses a secret to publish a package to the npm registry:

```yaml
- name: Publish to npm
  uses: actions/setup-node@v3
  with:
    node-version: "18"
    registry-url: "https://registry.npmjs.org"
- run: npm publish
  env:
    NODE_AUTH_TOKEN: ${{ secrets.NPM_TOKEN }}
```

## Community

- [Community Building Guide](./community.building.md) - Fostering a healthy and effective community.
- [Using GitHub Discussions](./community.discussions.md) - Leveraging Discussions for community conversations.
- [Issue Management Guide](./community.issue-management.md) - Best practices for triaging issues.

## Development

- [GitHub Codespaces](./development.codespaces.md) - Using Codespaces for cloud-based development.
- [Docker Environment](./development.docker.md) - Using the included Docker setup.
- [`package.json` Guide](./development.package-json.md) - Explanation of the `package.json` files.
- [Using Prettier](./development.prettier.md) - Guide to installing and using Prettier.

## Documentation

- [Documentation Best Practices](./documentation.best-practices.md) - How to write clear and effective documentation.

## Guides

- [Software Project Guide](./guides.software-project.md) - Using this repo as a foundation for a software project.

## Updating

- [Adding `base` to an Existing Repo](./updating.adding-base-to-existing-repo.md) - How to merge `base` into a project that was not created from the template.
- [Syncing When `base` is Updated](./updating.syncing-your-repo-when-base-is-updated.md) - How to get the latest changes from `base` after you have already merged it.

## Project Management

- [Repository Badges](./project.badges.md) - How to use and create repository badges.
- [Launch Checklist](./project.launch-checklist.md) - A reusable checklist for project launches.
- [Licensing Info](./project.licensing.md) - Details on the MIT License.
- [Security Best Practices](./project.security.md) - Basic security practices for maintainers.
- [Standard Files](./project.standard-files.md) - Explanation of standard repo files.
- [Template Repo Guide](./project.template-repo.md) - Best practices for maintaining this template.
- [Versioning Guide](./project.versioning.md) - Professional release management.

## Publishing

- [Publishing Overview](./publishing.md) - An overview of the different ways to publish content.
- [Publishing with Markdown](./publishing.markdown.md) - The simplest way to create pages.
- [Advanced Publishing with HTML](./publishing.html.md) - For more control over layout and style.
- [Publishing with Magic Links](./publishing.magic-links.md) - Creating links that pre-fill new file content.
- [GitHub Pages](./publishing.github-pages.md) - How the underlying publishing system works.
