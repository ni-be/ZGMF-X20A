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

###########################
##### ALIAS     ###########
## making life easier #####
###########################

alias peko="bartib"
alias 字="jisho-cli"
alias ji="jisho-cli"

#### GIT 
alias g="git"
alias gdiff="git diff"


####### EXA 
alias ll='exa -l --icons --no-user --git'
alias l1='exa --tree --level 1 --icons --git'
alias l2='exa --tree --level 2 --icons --git'
alias l3='exa --tree --level 3 --icons --git'
alias ls='exa'
alias la='exa --all'

#### VS CODE 
alias kot="code --"

###########################
##### ZELLIJ ##############
###########################

##### Choose active session ### TODO CHARM - make it look nicer 
alias お=". ~/.config/zellij/script/current-session.sh"

#run in floating window
alias zrf="zelliabrt-action-analyze-vulnerabilityj run -f --"
alias myu="zellij --layout ~/.config/zellij/layout/futsu.kdl"

############################
#### KNOWN Workspaces ######
############################

# LATEX repo -> nikolasbertrand/kaku 
alias か="zellij --session 書く --layout kaku"

#### Exercism
alias す="zellij --session すいせい --layout suisei"

#### Alias MetaTelingo Project
alias め="zellij --session メターテリンゴ --layout metatel"

### Note Taking
alias 人生="zellij --session 人生 --layout jinsei"

### QOL ###################

# TTYD Terminal in browser

alias ttyd="ttyd -t enableSixel=true -p 9001 zsh"
alias ttydk="ps -ef | rg ttyd"

###########################
## ssh login
###########################
あ() {
    eval $(ssh-agent -s)
    ssh-add ~/.ssh/ghdev
}
い() {
    git add --all
    if [ "$1" != "" ] # or better, if [ -n "$1" ]
    then
        git commit -m "$1"
    else
        git commit -m update
    fi
    git push
}
## placeholder for further scripts
#う
#え
#ア
alias イ="gitui"
#ウ
#エ
#オ

_ZO_EXCLUDE_DIRS=""
_ZO_RESOLVE_SYMLINKS=1
SAVEHIST=10000  # Save most-recent 1000 lines
HISTFILE=~/.zsh_history


eval "$(zoxide init zsh --hook pwd)"
eval "$(starship init zsh)"

####################################################
### EXPORTS ########################################
####################################################
export LANG=en_US.UTF-8

export PNPM_HOME="/home/nbertrand/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

export PATH=~/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=/home/nbertrand/.nimble/bin:$PATH
export PATH=/home/nbertrand/.cargo/bin:$PATH
export PATH=/var/lib/flatpak/exports/bin:$PATH

export PATH=~/go/bin/:$PATH
export GOPATH=/home/nbertrand/go:$GOPATH
export GOROOT=$HOME/go
export PATH=$PATH:$GOROOT/bin

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


export BARTIB_FILE="/home/nbertrand/SHOSAI/jinsei/time.md"
export TODO_FILE="/home/nbertrand/SHOSAI/jinsei/todo/todo.txt"
export DONE_FILE="/home/nbertrand/SHOSAI/jinsei/todo/done.txt"

 if test -z "${XDG_RUNTIME_DIR}"; then
     export XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
     if ! test -d "${XDG_RUNTIME_DIR}"; then
         mkdir "${XDG_RUNTIME_DIR}"
         chmod 0700 "${XDG_RUNTIME_DIR}"
     fi
 fi
 function osc7 {
      local LC_ALL=C
      export LC_ALL
  
      setopt localoptions extendedglob
      input=( ${(s::)PWD} )
      uri=${(j::)input/(#b)([^A-Za-z0-9_.\!~*\'\(\)-\/])/%${(l:2::0:)$(([##16]#match))}}
      print -n "\e]7;file://${HOSTNAME}${uri}\e\\"
 }
 add-zsh-hook -Uz chpwd osc7
 
 
 precmd() {
      print -Pn "\e]133;A\e\\"
 }
  
 TRAPUSR1() {
    if [ "$scheme" = "night" ];then
      /usr/bin/theme.sh tokyo-storm
    elif [ "$scheme" = "day" ]; then
      /usr/bin/theme.sh tokyo-day
  fi
  }