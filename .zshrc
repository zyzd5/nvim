export https_proxy=http://127.0.0.1:7890 
export http_proxy=http://127.0.0.1:7890 
export all_proxy=socks5://127.0.0.1:7890

export EDITOR=neovim
export MANPAGER='nvim +Man!'

alias n='nvim'
alias 'n.'='n .'
alias t='tree'
alias ':q'='exit'
alias 'q'='exit'
alias 'cl'='clear'
alias 'c'='clear'
alias 'sl'='ls'

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="garyblessington"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main)
ZSH_HIGHLIGHT_STYLES[comment]='fg=yellow'

