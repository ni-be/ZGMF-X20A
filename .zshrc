source ~/GIT/zsh-autocomplete/zsh-autocomplete.plugin.zsh
#eval "$(pyenv virtualenv-init -)"
CASE_SENSITIVE="true"

zstyle ':omz:update' mode auto  zstyle ':omz:update' frequency 13

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy/mm/dd"

plugins=(git ssh-agent zsh-autosuggestions)

export EDITOR='hx'
# Compilation flags
#export ARCHFLAGS="-arch x86_64"
source ~/.config/zsh/shell-integration
source ~/.config/zsh/alias
source ~/.config/zsh/export
source ~/.config/zsh/foot

_ZO_EXCLUDE_DIRS=""
_ZO_RESOLVE_SYMLINKS=1
SAVEHIST=10000  # Save most-recent 1000 lines
HISTFILE=~/.zsh_history


eval "$(zoxide init zsh --hook pwd)"
eval "$(starship init zsh)"


# Preview file content using bat (https://github.com/sharkdp/bat)
export FZF_CTRL_T_OPTS="
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"

  
# CTRL-/ to toggle small preview window to see the full command
# CTRL-Y to copy the command into clipboard using pbcopy
export FZF_CTRL_R_OPTS="
  --preview 'echo {}' --preview-window up:3:hidden:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"

  # Print tree structure in the preview window
export FZF_ALT_C_OPTS="--preview 'tree -C {}'"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

