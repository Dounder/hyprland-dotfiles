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
alias @update='npm i -g npm yarn pnpm bun'
alias lzd='lazydocker'

# fnm
FNM_PATH="/home/glasdou/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/glasdou/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi


export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_TYPE=wayland
export QT_QPA_PLATFORM=wayland
export MOZ_ENABLE_WAYLAND=1
export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export MOZ_ENABLE_WAYLAND=1  # For Firefox
export EGL_PLATFORM=wayland  # For Chromium-based browsers

PATH=~/.console-ninja/.bin:$PATH

# ssh-agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
