# dotfiles

A collection of configurations to setup my environment to get it ready quickly.

# Installation

* Clone repository to home root
* Replace placeholders (curly brackets) in files
* Copy files to home root

## ZSH setup

Add the following function in `.zshrc` that runs hooks on directory change

```
# Function to run hooks on directory change
function chpwd() {
  source ~/.jabraf/volta-nvmrc.sh
  source ~/.jabraf/worktree-setup.sh
}
```
