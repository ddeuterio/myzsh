# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
# zstyle ':omz:update' frequency 13
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(git kubectl)

source $ZSH/oh-my-zsh.sh
source <(kubectl completion zsh)

# User configuration
alias la="ls -la"
alias lh="ls -lha"
export do='--dry-run -o yaml'
export KUBECONFIG="${KUBECONFIG}:${HOME}/.kube/config"

