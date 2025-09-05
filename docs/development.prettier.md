# Prettier

Prettier is an opinionated code formatter.
It enforces a consistent style by parsing your code and re-printing it with
its own rules that take the maximum line length into account, wrapping code
when necessary.

This document provides instructions on how to install and run Prettier in your
project.

## Installation

The recommended approach is to install Prettier locally as a development
dependency.

### npm

```bash
npm install --save-dev --save-exact prettier
```

### yarn

```bash
yarn add --dev --exact prettier
```

### pnpm

```bash
pnpm add --save-dev --save-exact prettier
```

### bun

```bash
bun add --dev --exact prettier
```

This repository includes a default configuration file,
[`.prettierrc`](../.prettierrc), so you don't need to create one from
scratch.
It lets editors and other tools know that you are using Prettier.

It is also useful to create a `.prettierignore` file to specify which files
should not be formatted by Prettier.

```bash
echo "# Ignore artifacts:\nbuild\ncoverage" > .prettierignore
```

## Usage

Once Prettier is installed, you can run it from the command line to format
your files.

### Format all files

To format all files in your project, run the following command:

```bash
npx prettier . --write
```

### Format specific files or directories

You can also format specific files or directories:

```bash
# Format all files in the 'app' directory
npx prettier app --write

# Format a single file
npx prettier app/components/Button.js --write

# Format all test files in a directory using a glob pattern
npx prettier "app/**/*.test.js" --write
```

### Check for formatting issues

In a Continuous Integration (CI) environment, you can use the `--check` flag
to verify that all files are formatted correctly without actually modifying
them.
This is useful for enforcing a consistent code style.

```bash
npx prettier . --check
```

For more information, please refer to the official
[Prettier documentation](https://prettier.io/docs/en/install.html).
