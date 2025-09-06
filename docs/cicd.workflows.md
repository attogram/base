# CI/CD Workflows

This repository includes several GitHub Actions workflows to automate various tasks. Each workflow is defined in a `.yml` file in the `.github/workflows` directory.

Below is an overview of the available workflows. For more detailed information about a specific workflow, please refer to its dedicated documentation page.

## Workflow Index

- [**CI Workflow**](./cicd.workflow-ci.md) (`ci.yml`)
  - Ensures code quality by running linting checks on every push and pull request to the `main` branch.

- [**GitHub Pages Deployment**](./cicd.workflow-pages.md) (`pages.yml`)
  - Builds and deploys the repository's content as a GitHub Pages website.

- [**Prettier Workflow**](./cicd.workflow-prettier.md) (`prettier.yml`)
  - Automatically formats the code in the repository using Prettier and commits the changes.

- [**Release on Tag**](./cicd.workflow-release-on-tag.md) (`release-on-tag.yml`)
  - Automates the creation of GitHub Releases when a new version tag is pushed.
