export http_proxy=http://127.0.0.1:7890 
export https_proxy=https://127.0.0.1:7890 

export EDITOR=nvim
export MANPAGER='nvim +Man!'

alias n='nvim'
alias 'q'='exit'
alias 'cl'='clear'
alias 'c'='clear'
alias 'sl'='ls'
alias 'python'='python3'
alias 'nv'='neovide'

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

