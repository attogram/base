[base](../README.md) > [docs](./README.md) > [workflows](./workflows.md) > Manual Prettier Workflow

# Manual Prettier Workflow

The Manual Prettier workflow, defined in `.github/workflows/prettier.yml`, provides a way to format the entire repository on demand.

## Triggers

This workflow is triggered manually using the `workflow_dispatch` event. You can run it from the "Actions" tab in the GitHub repository.

## Jobs

### `format`

This job runs on `ubuntu-latest` and performs the following steps:

1.  **Checkout Code**: Checks out the repository's code. It uses the `GITHUB_TOKEN` to allow the workflow to push changes back to the repository.
2.  **Setup Node.js**: Sets up Node.js version 20 and configures caching for `npm` to speed up dependency installation.
3.  **Install Dependencies**: Installs the project's dependencies, including Prettier, by running `npm install`.
4.  **Run Prettier**: Executes `npx prettier --write .` to format all files in the repository in-place.
5.  **Commit Changes**: Uses the `stefanzweifel/git-auto-commit-action` to check if Prettier made any changes. If there are changes, it commits them back to the current branch with the commit message "style: Format code with Prettier". This action is configured to check all files.

The purpose of this workflow is to provide a convenient way for developers to format the entire repository without needing to run Prettier locally. It is especially useful for large-scale formatting changes or for ensuring consistency after pulling in changes from multiple sources.
