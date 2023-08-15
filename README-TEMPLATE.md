<%- lib.renderOpening() %>

## Install

<%- await lib.renderCode('npm install task-library', 'sh', 'https://www.npmjs.com/package/task-library') %>

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
