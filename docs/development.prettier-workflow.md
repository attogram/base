# Prettier Workflow

This repository includes a GitHub Actions workflow that automatically formats
all files in the repository using [Prettier](https://prettier.io/), a
widely-used code formatter.
This ensures a consistent and readable code style across the entire project.

## Workflow Details

- **Workflow File:** [`.github/workflows/prettier.yml`](../.github/workflows/prettier.yml)
- **Trigger:** This workflow is triggered automatically on:
  - Pushes to the `main` branch.
  - Any pull request.
- **Action:** When triggered, the workflow will:
  1. Check out the code from the relevant branch or pull request.
  2. Install the necessary dependencies (`npm install`).
  3. Run `npx prettier --write .` to format all files.
  4. If any files were changed by Prettier, the workflow will automatically
     commit the changes back to the same branch (for pushes) or the pull
     request's head branch with the commit message
     `style: Format code with Prettier`.

## How it Works

The workflow runs automatically, so there are no manual steps required.

- **On the `main` branch:** When code is pushed to `main`, the workflow will
  run and commit any formatting changes directly to `main`.
- **On Pull Requests:** When you open a pull request, the workflow will run on
  the code in your branch.
  If it finds any formatting issues, it will push a new commit to your branch
  with the fixes.
  This helps ensure that all code is properly formatted before it gets merged
  into `main`.
