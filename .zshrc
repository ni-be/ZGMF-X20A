

## IMPORTS -> EXPORT, ALIAS 
source ~/ZGMF-X20A/zsh/alias
source ~/ZGMF-X20A/zsh/export

## DEFAULT ZSH STUFF 
#=============================
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy/mm/dd"c
SAVEHIST=2000  # Save most-recent 1000 lines
HISTFILE=~/.zsh_history




# EVALS
eval "$(zoxide init zsh --hook pwd)"
eval "$(starship init zsh)"
source ~/ZGMF-X20A/zsh/zinit_plugs