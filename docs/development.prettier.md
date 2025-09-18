[base](../README.md) > [docs](./README.md) > [development](./development.md) > Using Prettier

# Prettier for Code Formatting

[Prettier](https://prettier.io/) is an opinionated code formatter that enforces a consistent code style across the entire project. This repository uses Prettier in two ways:
- A **linting check** that runs automatically on pull requests to verify formatting.
- A **manual workflow** that can be run to format the entire repository.

## Linting with GitHub Actions

This repository includes a [CI workflow](./workflows.ci.md) that automatically checks for formatting issues on every pull request.

- **How it works**: The workflow runs `prettier --check .`. If it finds any files that are not correctly formatted, the workflow will fail. This prevents code with incorrect formatting from being merged.
- **What you need to do**: Make sure to run Prettier on your code before pushing it. If the check fails, you will need to format your code and push the changes.

## Manual Formatting Workflow

For convenience, this repository also includes a [manual formatting workflow](./workflows.prettier.md) that you can trigger from the Actions tab in GitHub.

- **How it works**: This workflow runs `prettier --write .` on all files and commits any changes back to your branch.
- **When to use it**: You can use this if you forget to format your code locally, or if you want to format a large number of files at once.

## Manual Formatting

While the automated workflow handles formatting on the server, it's a good practice to run Prettier locally as you work.

### Installation

This repository includes Prettier as a development dependency in `package.json`. To install it, run:

```bash
npm install
```

The repository also includes a [`.prettierrc`](../.prettierrc) configuration file, so you don't need to create one.

### Usage

You can run Prettier from the command line to format your files.

- **Format all files**:
  ```bash
  npx prettier . --write
  ```
- **Check for formatting issues without changing files**:
  ```bash
  npx prettier . --check
  ```

For more detailed information on using Prettier, refer to the [official Prettier documentation](https://prettier.io/docs/en/).
