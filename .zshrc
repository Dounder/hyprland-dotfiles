export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting you-should-use)

source $ZSH/oh-my-zsh.sh

# Aliases
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'
alias ec="code $HOME/.zshrc" # edit .zshrc
alias sc="source $HOME/.zshrc"  # reload zsh configuration
alias cl='clear'
alias gp='git push'
alias gpp='git pull'
alias dup='docker compose up'
alias ddown='docker compose down'
alias mkdir='mkdir -p'
alias @update='npm i -g npm yarn pnpm'
