[base](../../README.md) > [docs](../README.md) > [ai](./ai.md) > Guiding AI with AGENTS.md

# Guiding AI with `AGENTS.md`

The `AGENTS.md` file is a crucial tool for ensuring that AI assistants, like
Jules, can effectively and safely interact with your repository.
It acts as a repository-specific instruction manual, allowing you to define
conventions, outline procedures, and provide context that the AI needs to
perform its tasks correctly.

This guide explains the purpose and best practices for creating and maintaining
an `AGENTS.md` file.

## Why Use `AGENTS.md`?

1.  **Contextual Awareness:** An AI assistant, even with general knowledge,
    lacks the specific context of your project.
    `AGENTS.md` bridges this gap by providing essential information about your
    repository's architecture, coding conventions, and development workflows.

2.  **Enforcing Conventions:** You can specify rules that the AI must follow,
    such as commit message formats, branching strategies, or code styling
    guidelines.
    This ensures that the AI's contributions are consistent with your project's
    standards.

3.  **Improving Accuracy:** By providing clear instructions, you reduce the
    likelihood of the AI making incorrect assumptions.
    This leads to more accurate and reliable results, saving you time on rework
    and corrections.

4.  **Safe Automation:** You can define "do's and don'ts" to prevent the AI
    from taking unintended or destructive actions, such as force-pushing to a
    branch or modifying critical configuration files without explicit
    permission.

## How it Works

-   **Location:** The `AGENTS.md` file can be placed in the root of your
    repository or in any subdirectory.
-   **Scope:** The instructions in an `AGENTS.md` file apply to all files and
    directories within the directory that contains it, and all of its
    subdirectories.
-   **Precedence:** If there are multiple `AGENTS.md` files (e.g., one in the
    root and one in a subdirectory), the instructions in the more deeply nested
    file take precedence for the files within its scope.

## What to Include in `AGENTS.md`

Here are some common types of information to include in your `AGENTS.md` file:

-   **Project Overview:** A brief description of the project's purpose and
    technology stack.
-   **Repository Structure:** An explanation of the key directories and their
    contents.
-   **Development Workflow:** Step-by-step instructions for setting up the
    development environment, running tests, and building the project.
-   **Coding Conventions:** Guidelines for code style, naming conventions, and
    best practices.
-   **Commit Message Format:** The preferred format for commit messages (e.g.,
    Conventional Commits).
-   **Branching Strategy:** The branching model used in the repository (e.g.,
    GitFlow, GitHub Flow).
-   **Release Process:** Instructions for creating and publishing new releases.
-   **Specific Instructions for AI:** Any unique rules or constraints that apply
    only to AI assistants.

By investing a small amount of time in creating a comprehensive `AGENTS.md`
file, you can significantly improve the effectiveness and reliability of AI
collaboration on your project.
It's a powerful way to guide the AI toward producing high-quality, consistent,
and safe contributions.
