# Prettier Workflow

This repository includes a GitHub Actions workflow that automatically formats all files in the repository using [Prettier](https://prettier.io/), a widely-used code formatter. This ensures a consistent and readable code style across the entire project.

## Workflow Details

- **Workflow File:** [`.github/workflows/prettier.yml`](../.github/workflows/prettier.yml)
- **Trigger:** This workflow is **not** run automatically. It must be triggered manually.
- **Action:** When run, the workflow will:
  1. Check out the code from the branch it was run on.
  2. Install the necessary dependencies (`npm install`).
  3. Run `npx prettier --write .` to format all files.
  4. If any files were changed by Prettier, the workflow will automatically commit the changes back to the same branch with the commit message `style: Format code with Prettier`.

## How to Use

To run the formatting workflow:

1.  Navigate to the **Actions** tab of the repository on GitHub.
2.  In the left sidebar, click on **"Format Code with Prettier"**.
3.  Above the list of previous runs, you will see a message: "This workflow has a `workflow_dispatch` event trigger."
4.  Click the **"Run workflow"** button.
5.  Choose the branch you want to format and click the **"Run workflow"** button again.

The workflow will then execute, and any formatting changes will be pushed to your chosen branch. This is useful for cleaning up a feature branch before creating a pull request.
