#!/bin/bash

# check if this is a git repository
if [ ! -d .git ]; then
    return
fi

# set base for work tree
WT_BASE_DIR=~/worktrees

# get current directory name
WT_CURRENT_DIR_NAME=$(basename "$PWD")

echo "Worktree is setup for $WT_CURRENT_DIR_NAME at $WT_BASE_DIR/$WT_CURRENT_DIR_NAME"

alias gwta="git worktree add $WT_BASE_DIR/$WT_CURRENT_DIR_NAME/$1" "${2:-$1}"
alias gwtr="git worktree remove $WT_BASE_DIR/$WT_CURRENT_DIR_NAME/$1"
