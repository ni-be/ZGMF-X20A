source ~/.config/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh

CASE_SENSITIVE="true"

zstyle ':omz:update' mode auto  zstyle ':omz:update' frequency 13

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy/mm/dd"

plugins=(git ssh-agent docker zsh-autosuggestions)

export EDITOR='hx'
# Compilation flags
#export ARCHFLAGS="-arch x86_64"
source ~/.config/zsh/shell-integration
source ~/.config/zsh/alias
source ~/.config/zsh/export
source ~/.config/zsh/foot
source ~/.config/zsh/lf-icons

_ZO_EXCLUDE_DIRS=""
_ZO_RESOLVE_SYMLINKS=1
SAVEHIST=10000  # Save most-recent 1000 lines
HISTFILE=~/.zsh_history


eval "$(zoxide init zsh --hook pwd)"
eval "$(starship init zsh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

