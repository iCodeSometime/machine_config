# Machine Config
This is my personal machine configuration. Feel free to use it if you want; just make sure you fork this repo
and clone your fork, since a portion of this automates pushing config changes to origin/master - that needs to refer to your fork.

## Usage
Fork this repo, then:
```bash
git clone https://github.com/<your_username>/machine_config
cd machine_config
./configure
```

## Features
Right now there are two portions:
1. A config script to be run as a one time setup
2. A `.zshrc` file

### Config Script
The config script deletes the current `.zshrc` (prompting first) and creates a symbolic link to the `.zshrc` in the git repo.

### zshrc
This holds the oh-my-zsh settings, as well as a few custom settings and aliases
1. Set `$EDITOR` to emacs.
2. Create an alias `e` that refers to the default editor ($EDITOR).
3. Create an alias `zshrc` that opens `.zshrc` in the default editor. Once the editor closes, it reloads `.zshrc` in the open terminal and pushes the changes to `origin/master` with the commit message 'automated commit'
4. Creates an alias `lazyg` that adds commits and pushes with the given commit message.
5. Create a function `mkcd` that creates the given directory and then moves into it. (`mkdir test && cd test`)