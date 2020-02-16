#!/bin/bash

sudo antibody bundle < ~/.zsh/.zsh_plugins.txt > ~/.zsh/.zsh_plugins.sh
sudo antibody bundle < ~/.zsh/.zsh_plugins.osx.txt > ~/.zsh/.zsh_plugins.osx.sh
sudo antibody bundle < ~/.zsh/.zsh_plugins.linux.txt > ~/.zsh/.zsh_plugins.linux.sh

echo DONE