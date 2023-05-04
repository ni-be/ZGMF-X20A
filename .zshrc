source ~/GIT/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/GIT/fzf-tab/fzf-tab.plugin.zsh

#eval "$(pyenv virtualenv-init -)"

conda config --set auto_activate_base false
CASE_SENSITIVE="true"

zstyle ':omz:update' mode auto  zstyle ':omz:update' frequency 13

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy/mm/dd"

# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# preview directory's content with exa when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
# switch group using `,` and `.`
zstyle ':fzf-tab:*' switch-group ',' '.'


plugins=(git ssh-agent fzf fzf-tab)
#plugins=(git ssh-agent zsh-autocomplete zsh-autosuggestions)
#plugins=(fzf-tab)
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


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
        . "/usr/etc/profile.d/conda.sh"
    else
        export PATH="/usr/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# source ~/Downloads/Sen2Cor-2.11.00-Linux64/L2A_Bashrc
