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

# Function to start SSH agent and add a specific key
function start_ssh_agent() {
  local key_path="$1"

  if [[ -z "$key_path" ]]; then
    echo "Usage: start_ssh_agent <path_to_ssh_key>"
    return 1
  fi

  # Check if key file exists
  if [[ ! -f "$key_path" ]]; then
    echo "SSH key not found at $key_path"
    return 1
  fi

  # Check if ssh-agent is already running
  if [[ -z "$SSH_AGENT_PID" ]] || ! ps -p $SSH_AGENT_PID > /dev/null; then
    echo "Starting new SSH agent..."
    eval "$(ssh-agent -s)"
  else
    echo "SSH agent already running with PID $SSH_AGENT_PID"
  fi

  # Check if key is already added
  if ssh-add -l | grep -q "$(ssh-keygen -lf "$key_path" | awk '{print $2}')"; then
    echo "Key already added to SSH agent"
  else
    # Add the key
    ssh-add "$key_path"
    echo "Added key: $key_path"
  fi
}

# Function to add work key (Bitbucket)
function work_git() {
  start_ssh_agent "$HOME/.ssh/work"
}

# Function to add personal key (GitHub)
function personal_git() {
  start_ssh_agent "$HOME/.ssh/personal"
}

# Function to add both keys
function git_all_keys() {
  start_ssh_agent "$HOME/.ssh/work"
  start_ssh_agent "$HOME/.ssh/personal"
}
