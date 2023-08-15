# Task Library

<p align="right"><code>2204 sloc</code>&nbsp;<code>233 files</code>&nbsp;<code>5 deps</code>&nbsp;<code>15 dev deps</code></p>

A collection of bash scripts to support build, test, deploy and chores associated with developing and maintaining Node apps.

<br />

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
## Table of Contents

  - [Install](#install)
  - [Usage](#usage)
  - [Overriding variable defaults](#overriding-variable-defaults)
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

# Developer Notes

- `find -exec` does not return exit code of exec command. Workaround: Use `xargs` instead.
