eval "$(zoxide init zsh --hook pwd)"
eval "$(starship init zsh)"
QT_QPA_PLATFORM=wayland

source ~/GIT/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/GIT/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

conda config --set auto_activate_base false

#zstyle ':omz:update' mode auto  zstyle ':omz:update' frequency 13

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy/mm/dd"

#plugins=(git ssh-agent fzf-tab)
plugins=(git ssh-agent zsh-autocomplete zsh-autosuggestions)

# Compilation flags
#export ARCHFLAGS="-arch x86_64"
# ????? source ~/.config/zsh/shell-integration

_ZO_EXCLUDE_DIRS=""
_ZO_RESOLVE_SYMLINKS=1
SAVEHIST=1000  # Save most-recent 1000 lines
HISTFILE=~/.zsh_history

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

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit


####################################################
### EXPORTS ########################################
####################################################
export LANG=en_US.UTF-8

export PATH=~/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=/home/nibe/.nimble/bin:$PATH
export PATH=/home/nibe/.cargo/bin:$PATH
export PATH=/var/lib/flatpak/exports/bin:$PATH

export PATH=~/go/bin/:$PATH
export GOPATH=/home/nibe/go:$GOPATH

export BARTIB_FILE="/home/nibe/SHOSAI/jinsei/time.md"
export TODO_FILE="/home/nibe/SHOSAI/jinsei/todo/todo.txt"
export DONE_FILE="/home/nibe/SHOSAI/jinsei/todo/done.txt"
export ZELLIJ_RUNNER_LAYOUTS_DIR=.config/zellij/layouts
# directory with the projects, relative to the HOME dir
#ZELLIJ_RUNNER_ROOT_DIR=
# switcher already respects gitignore, but it's still useful in case there's no git
export ZELLIJ_RUNNER_IGNORE_DIRS=node_modules,target
# traverse dirs 3 level max from ZELLIJ_RUNNER_ROOT_DIR
export ZELLIJ_RUNNER_MAX_DIRS_DEPTH=3
#ZELLIJ_RUNNER_BANNERS_DIR=.config/zellij/banners
export VISUAL='hx'
export EDITOR='hx'

####################################################
##### ALIAS     ###################################
## making life easier ############################
##################################################
alias zh="hx ~/ZGMF-X20A/zsh/alias"
alias zb="bat ~/ZGMF-X20A/zsh/alias"
alias peko="bartib"

##### alias FZF
alias fzf="fzf --preview 'bat --color=always {}' --preview-window '~3' --bind 'enter:become(hx {})' --bind 'CTRL-k:become(zellij edit --floating {})' --bind 'CTRL-l:become(zellij action new-pane -- hx {})'" 
alias fzt="/home/nibe/ZGMF-X20A/scripts/rfv"
alias fzd="cd ~ && cd \$(find * -type d | fzf)"
#### GIT 
gitup='ssh-add ~/.ssh/gitup'
gic='git commit -m'
gip='git push'


ア() {
    eval $(ssh-agent -s)
    ssh-add ~/.ssh/ghdev
}
### Git update script... 
jit() {
    git add --all
    if [ "$1" != "" ] # or better, if [ -n "$1" ]
    then
        git commit -m "$1"
    else
        git commit -m update
    fi
    git push
}

alias jui="gitui"

#### LATEX ###
alias ttex="tectonic *.tex"

#### EXA 
alias ll='exa -l --icons --no-user --git'
alias l1='exa --tree --level 1 --icons --git'
alias l2='exa --tree --level 2 --icons --git'
alias l3='exa --tree --level 3 --icons --git'
alias ls='exa'
alias la='exa --all'

###########################
#### CONDA ###############
##########################
alias あい="conda activate ASP" 

###########################
##### ZELLIJ ##############
###########################
alias zj="zellij"

#run in floating window
alias zrf="zellij run -f --"

##### Choose active session ### TODO CHARM - make it look nicer 
alias あ="zellij-runner"

alias ねね="zellij --layout futsu"

#####################
# Sessions/Workspaces

# msc project 
alias 残酷="zellij --session 地獄 --layout zankoku"

# LATEX repo -> nikolasbertrand/kaku 
alias か="zellij --session 書く --layout kaku"

#### Exercism
alias す="zellij --session すいせい --layout suisei"

#### Alias MetaTelingo Project
alias め="zellij --session メターテリンゴ --layout metatel"

### Note Taking
alias 人生="zellij --session 人生 --layout jinsei"

### RSE
alias の="zellij --session ノエル --layout noel"

### RX-78-2
alias が="zellij --session RX-78-2 --layout rx782"

##### ETC 
# TTYD Terminal in browser
alias ttyd="ttyd -t enableSixel=true -p 9001 zsh"
alias ttydk="ps -ef | rg ttyd"
##### Jisho.org
alias じ="jisho-cli"
