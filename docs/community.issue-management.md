[base](../../README.md) > [docs](../README.md) > [community](./community.md) > Issue Management Guide

# Issue Management Guide

Effective issue management is crucial for a well-run open source project.
A clean and organized issue tracker makes it easier for maintainers to
prioritize work and for contributors to find ways to help.

This guide provides best practices for triaging and managing issues in your
repository.

## 1. Use Issue Templates

Good issues start with good information.
[Issue templates](./.github/ISSUE_TEMPLATE/) prompt users to provide the
necessary details when they open an issue, such as:

-   Steps to reproduce the bug.
-   The expected behavior vs. the actual behavior.
-   The user's operating system and software versions.
-   A clear description of the proposed feature.

This repository includes templates for bug reports and feature requests.
Encourage your community to use them.

## 2. Label Your Issues

Labels are a powerful tool for organizing your issue tracker.
A good set of labels can help you quickly filter and prioritize issues.

Consider creating labels for:

-   **Issue Type:** `bug`, `feature`, `documentation`, `question`
-   **Priority:** `high-priority`, `medium-priority`, `low-priority`
-   **Status:** `needs-triage`, `help-wanted`, `good-first-issue`, `in-progress`,
    `blocked`
-   **Component:** `api`, `ui`, `database`, `tests`

The `good-first-issue` label is particularly important for attracting new
contributors.
Use it to mark issues that are well-defined and don't require deep knowledge
of the codebase.

## 3. Triage Regularly

Triage is the process of reviewing new issues and preparing them for work.
Set aside time to regularly triage incoming issues.

A typical triage workflow might look like this:

1.  **Read the issue:** Make sure you understand the problem or request.
2.  **Check for duplicates:** If the issue is a duplicate, close it and link
    to the original.
3.  **Ask for more information:** If the issue is unclear or missing details,
    ask the author to provide more information.
    If they don't respond after a reasonable amount of time, it's okay to
    close the issue.
4.  **Reproduce bugs:** For bug reports, try to reproduce the issue yourself.
    If you can't, ask for more help from the author.
5.  **Apply labels:** Add the appropriate labels for type, priority, and
    status.

## 4. Prune Stale Issues

It's okay to close issues that are no longer relevant or that you don't plan
to address.
A cluttered issue tracker can be intimidating for new contributors and can make
it hard to see what's important.

Consider using a stale bot (like GitHub's built-in
[stale action](https://github.com/actions/stale)) to automatically comment on
and close issues that have been inactive for a long period.

## 5. Guide Users to Discussions

Not every post in your issue tracker needs to be an issue.
If a user opens an issue that is a question or a broad, open-ended idea,
politely guide them to use
[GitHub Discussions](./community.discussions.md) instead.
This keeps your issue tracker focused on actionable tasks.

By following these best practices, you can maintain a clean, organized, and
effective issue tracker that serves as the central hub for your project's
development.
