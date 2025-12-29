# git-cd

`git-cd` is fish shell function.

`git-cd` is executing `cd` command from Git project root directory.

## Install

With [fisher]

```
$ fisher tsub/git-cd
```

[fisher]: https://github.com/jorgebucaran/fisher

## Usage

Jump to Git project root directory.

```
$ pwd
/Users/tsub/sandbox/git-cd/functions

$ git-cd

$ pwd
/Users/tsub/sandbox/git-cd
```

Jump to `functions` directory from Git project root directory.

```
$ pwd
/Users/tsub/sandbox/git-cd

$ git-cd functions

$ pwd
/Users/tsub/sandbox/git-cd/functions
```

## Completions

Fish loads `completions/git-cd.fish` to enable tab completion of paths relative to the Git project’s root directory.

## FAQ

### `$ git cd` is not working

Git Subcommand is must to be executable file.

`git-cd` is a shell function, so it can not be used as a Git subcommand :cry:
