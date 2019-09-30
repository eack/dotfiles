#!/usr/bin/env bash

repo_dir=$(pwd)
dotfiles=(.tmux.conf)
dotfiles_config=(nvim base16-shell)

# install dotfiles
for dotfile in "${dotfiles[@]}"
do
    env rm -rf "${HOME}/${dotfile}"
    env ln -sf "${repo_dir}/${dotfile}" "${HOME}/"
done

# install dotfiles config
mkdir -p "${HOME}/.config"
for dotfile in "${dotfiles_config[@]}"
do
    env rm -rf "${HOME}/.config/${dotfile}"
    env ln -sf "${repo_dir}/.config/${dotfile}" "${HOME}/.config/${dotfile}"
done

