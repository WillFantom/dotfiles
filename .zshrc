# Vars for plugins
export TMUX_AUTOSTART=false
export TMUX_MOTD=false

# New Path
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/go/bin:$PATH

# Load
if [ `uname` = "Darwin" ]; then
    source ~/.zsh/.zsh_plugins.osx.sh
    source ~/.zsh/.zsh_aliases.osx
    test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
fi
if [ `uname` = "Linux" ]; then
    source ~/.zsh/.zsh_plugins.linux.sh
    source ~/.zsh/.zsh_aliases.linux
fi
source ~/.zsh/.zsh_plugins.sh
source ~/.zsh/.zsh_aliases

# Run on Start
if [ -x "$(command -v neofetch)" ]; then
    neofetch
fi

# GPG Key export
export GPG_TTY=$(tty)

# Starship
eval "$(starship init zsh)"