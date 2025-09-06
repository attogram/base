[base](../README.md) > [docs](./README.md) > base

# The `base` Philosophy

The `base` project is a language-agnostic, professional template for creating
new software projects. It is designed to be a solid foundation that you can
build upon, regardless of the programming language or framework you choose.

## Core Principles

1.  **Code-Independent:** The `base` template itself is not tied to any
    specific programming language. The included Docker environment is based on
    Ubuntu and NGINX to be as generic as possible. This allows you to bring your
    own language and tools without having to untangle a complex, pre-existing
    stack.

2.  **Well-Documented:** Every feature, configuration file, and workflow has
    corresponding documentation in this `docs` directory. The goal is to leave
    no part of the repository unexplained, making it easy for new contributors
    to get up to speed and for maintainers to understand all the components.

3.  **Guidance over Prescription:** For standard files like `CONTRIBUTING.md` or
    `LICENSE`, the template provides sensible defaults and guides you on how to
    customize them, rather than enforcing a single choice. This empowers you to
    make decisions that are right for your project while still benefiting from
    a professional starting point.

4.  **Automation:** The repository leverages GitHub Actions for CI, deployment,
    and releases to automate common developer tasks. These workflows are
    designed to be robust and easy to understand, providing a solid CI/CD
    pipeline out of the box.

## How to Use This Repository

There are two primary ways to use this repository as a starting point for your
own project:

1.  **As a Template:** The simplest method is to click the "Use this template"
    button at the top of the repository page on GitHub. This will create a new
    repository in your account with the same files and directory structure, but
    without the commit history. This is the recommended approach for new
-   projects.
-   [**Adding `base` to an Existing Repo**](./updating.adding-base-to-existing-repo.md)
-   [**Syncing When `base` is Updated**](./updating.syncing-your-repo-when-base-is-updated.md)
+   projects. See the guides on
+   [adding `base` to an existing repo](./updating.adding-base-to-existing-repo.md)
+   and
+   [syncing when `base` is updated](./updating.syncing-your-repo-when-base-is-updated.md)
+   for more advanced use cases.

2.  **As a Fork:** You can also fork this repository. This creates a copy of the
    repository in your account that maintains a connection to the original. This
    is useful if you want to contribute changes back to the `base` project
    itself, or if you want to be able to easily pull in updates from the original
    repository.

By providing a clean, well-documented, and automated starting point, the `base`
project aims to save you time and effort, allowing you to focus on what matters
most: building your application.
