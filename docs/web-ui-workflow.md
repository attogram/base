# GitHub Web UI Workflow

This document outlines how to contribute to this project using only the GitHub web interface, from making changes to merging a pull request. This is a great alternative for those who are not comfortable with the command line.

## Table of Contents

- [Creating a Pull Request from the Web UI](#creating-a-pull-request-from-the-web-ui)
- [Merging a Pull Request from the Web UI](#merging-a-pull-request-from-the-web-ui)

---

## Creating a Pull Request from the Web UI

You can make changes to files and create a pull request without leaving your browser. Here’s how:

1.  **Navigate to the File:**
    - Go to the file you want to edit in the repository. For example, if you want to fix a typo in the `README.md`, navigate to that file.

2.  **Click the Edit Icon:**
    - In the top right corner of the file view, you will see a pencil icon. Click it to start editing the file.

    ![Edit file icon](https://docs.github.com/assets/cb-29824/images/help/repository/edit-file-icon.png)

3.  **Make Your Changes:**
    - The file will open in a text editor. Make your desired changes directly in the browser.

4.  **Propose Changes:**
    - Once you are done, scroll to the bottom of the page. You will see a "Propose changes" section.
    - Write a clear and concise commit message that describes your change.
    - You can also add an optional extended description.

    ![Propose file change](https://docs.github.com/assets/cb-32008/images/help/repository/propose-file-change-form.png)

5.  **Create the Pull Request:**
    - After proposing the change, GitHub will automatically create a fork and a new branch for you.
    - You will be taken to a new page to open a pull request. The commit message you wrote will be the title.
    - Review the changes one last time and click the "Create pull request" button.

That's it! You have successfully created a pull request.

---

## Merging a Pull Request from the Web UI

If you are a maintainer of this project, you can merge pull requests directly from the GitHub interface.

1.  **Go to the Pull Requests Tab:**
    - In the main repository page, click on the "Pull requests" tab.

2.  **Select the Pull Request:**
    - Click on the pull request you want to merge.

3.  **Review the Changes:**
    - Look at the "Files changed" tab to review the proposed changes.
    - Ensure that all automated checks (like CI) have passed.

4.  **Merge the Pull Request:**
    - If you are satisfied with the changes, go back to the "Conversation" tab.
    - You will see a green "Merge pull request" button. Click it.

    ![Merge pull request button](https://docs.github.com/assets/cb-33769/images/help/pull_requests/merge-pull-request-button.png)

5.  **Confirm the Merge:**
    - A confirmation box will appear. You can edit the commit message if you wish.
    - Click "Confirm merge" to complete the process. The branch will be merged into the `main` branch.

### Merge Options

GitHub provides a few different ways to merge:

- **Create a merge commit:** This is the default option. It keeps all the commits from the branch and adds them to the history of the `main` branch.
- **Squash and merge:** This combines all the commits from the branch into a single commit on the `main` branch. This is useful for keeping the project history clean.
- **Rebase and merge:** This adds the commits from the branch onto the `main` branch without a merge commit. This results in the cleanest history, but can be more complex to manage.

You can choose the option that best fits the project's workflow.
