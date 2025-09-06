[base](../../README.md) > [docs](../README.md) > [ai](./ai.md) > Prompting AI Agents

# Prompting AI Agents

Effective prompting is the key to getting high-quality results from AI
assistants like Jules.
A well-crafted prompt provides the necessary context, constraints, and goals,
enabling the AI to understand your request and execute it accurately.

This guide provides best practices and examples for writing effective prompts.

## Principles of Good Prompting

1.  **Be Specific and Clear:** Avoid ambiguity.
    Clearly state what you want the AI to do, what files to modify, and what
    the expected outcome is.
    -   **Bad:** "Fix the bug."
    -   **Good:** "Fix the bug in `src/utils.js` where the `calculateTotal`
        function is off by one.
        It should correctly sum the items in the array."

2.  **Provide Context:** Give the AI the information it needs to understand the
    task.
    This can include:
    -   Relevant file paths.
    -   Error messages or logs.
    -   The business goal or user story behind the change.
    -   Links to relevant documentation or examples.

3.  **Set Constraints:** Tell the AI what it should *not* do.
    -   "Do not modify the public API."
    -   "Do not install any new dependencies."
    -   "Ensure the solution is compatible with Python 3.8."

4.  **Define the Scope:** Clearly define the boundaries of the task.
    -   "This task only involves changes to the `docs/` directory."
    -   "Focus only on refactoring the `UserService`, do not change the
        `OrderService`."

5.  **Reference `AGENTS.md`:** If your repository has an `AGENTS.md` file,
    remind the AI to read and follow its instructions.
    -   "Please make sure you have read and understood the guidelines in
        `AGENTS.md` before starting."

## Example Prompts

### Example 1: Fixing a Bug

**Prompt:**

> "Jules, there is a bug in our `api/views.py` file.
> When a user's subscription is inactive, the `/api/profile` endpoint is
> throwing a 500 error instead of a 403 Forbidden error.
>
> Please fix the logic in the `get_profile` view to correctly handle this case.
>
> **Acceptance Criteria:**
> -   If the user's `subscription.is_active` is `False`, the endpoint must
>     return a 403 status code.
> -   The change should only affect the `api/views.py` file.
> -   Please add a unit test in `tests/test_api.py` to cover this specific
>     case.
>
> Remember to follow the coding standards outlined in `AGENTS.md`."

### Example 2: Adding a New Feature

**Prompt:**

> "I need to add a new feature to our application.
> We need a new API endpoint at `/api/users/{id}/export` that exports a user's
> data as a CSV file.
>
> **Requirements:**
> 1.  Create a new function in `services/user_service.py` called
>     `export_user_data(user_id)`.
>     This function should query the database for the user's profile
>     information.
> 2.  Create a new view in `api/views.py` that handles the `/api/users/{id}/export`
>     endpoint.
>     It should call the `export_user_data` service and return the data as a
>     CSV file with the appropriate `Content-Disposition` header.
> 3.  The CSV should contain the following columns: `user_id`, `email`,
>     `first_name`, `last_name`, `join_date`.
>
> Do not add any new dependencies.
> This is a new feature, so please create a new documentation page for it at
> `docs/api.user-export.md`."

By following these principles, you can write prompts that are clear,
context-rich, and actionable, leading to better and more predictable results
from your AI assistant.
