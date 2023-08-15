# Task Library

<p align="right"><code>2218 sloc</code>&nbsp;<code>235 files</code>&nbsp;<code>5 deps</code>&nbsp;<code>15 dev deps</code></p>

A collection of bash scripts to support build, test, deploy and chores associated with developing and maintaining Node apps.

<br />

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
## Table of Contents

- [Install](#install)
- [Usage](#usage)
- [Overriding variable defaults](#overriding-variable-defaults)
- [Tasks](#tasks)
- [Developer Notes](#developer-notes)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Install

###### <p align="right"><a href="https://www.npmjs.com/package/task-library">https://www.npmjs.com/package/task-library</a></p>
```sh
npm install task-library
```

## Usage

```sh
npx task [TASK_NAME] [OPTIONS]
```

Try `npx task vars` and `npx task tasks` to list variables and tasks respectively.

## Overriding variable defaults

To override the default value of any variable listed by `npx task vars`, simply create a shell script named `task-vars` in the package root directory and export those variables with the desired values, e.g.

```sh
#!/bin/bash
export NODE_VERSION="20.0.0"
```

To obtain the default value for any variable, invoke a function of the same name, e.g.

```sh
#!/bin/bash
echo $(NODE_VERSION)
```

## Tasks

### install

Installs NPM packages based on inference (to be elaborated).

### update / upgrade / latest

Updates all NPM packages to the latest version regardless of semver.

### configure / config-gen

Generates config files based on inference (to be elaborated).

### test

Runs tests using inferred test runner.

### test-watch

Runs tests in watch mode using inferred test runner.

### cov

Runs tests with code coverage using inferred test runner.

### lint

Runs lint using inferred linters.

Currently supports ESLint and Shellcheck.

### fix

Runs lint with fix option using inferred linters.

### start / run

Starts the application using inferred launcher.

Currently supports Nodemon (for console applications), Serve (for static websites) and Parcel (for single page apps).

### build / dist

Creates a build based on inference (to be elaborated).

### deploy / publish

Deploys application based on inference (to be eleborated).

Currently supports GitHub Pages, NPM packages and Serverless.

### pre-commit / pre

Runs config-gen, code-gen, lint, cov, sloc, metrics-summary, readme-gen (to be eleborated).

## Developer Notes

- `find -exec` does not return exit code of exec command. Workaround: Use `xargs` instead.
