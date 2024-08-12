# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# fpath+=($HOME/.zsh/pure)
fpath+=("$(brew --prefix)/share/zsh/site-functions")
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

#REACT NATIVE STUFF
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin

export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home

export PATH="/usr/local/homebrew/bin":$PATH
export PATH="/opt/homebrew/bin":$PATH
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git 
	brew
	common-aliases
	node
	npm
  sudo
	rand-quote
	colored-man-pages
	colorize
	zsh-syntax-highlighting 
  zsh-autosuggestions
  alias-finder
  asdf
  fzf-tab
)
source $ZSH/oh-my-zsh.sh

# User configuration
autoload -U promptinit; promptinit
# export MANPATH="/usr/local/man:$MANPATH"

# You may seed to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='nvim'
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='nvim'
# else
#   export EDITOR='mvim'
#fi

#Find and kill process with fzf
fkill() {
  pid=$(ps -ef | sed 1d | fzf -m --ansi --header "Kill process" --color fg:-1,bg:-1,hl:46,fg+:40,bg+:233,hl+:46 --color prompt:166,border:2 --height 40%  --border=sharp --prompt="➤  " --pointer="➤ " --marker="➤ " | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    kill -${1:-9} $pid
  fi
}

#checkout branch
gch() {
 git checkout "$(git branch --all | fzf --height 40%| tr -d '[:space:]')"
}

pjson(){
  echo "$1" | jq
}

lsFileType(){
  lsa *.${1}
}


# VI mode
# source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias vf='nvim $(fzf --height 40% --reverse)'
alias v='nvim'
alias oldvim='vim'
alias vimh='vim .'
alias ve='v .env'
alias pa='v package.json'

alias portfolio='cd Code/Portfolio/portfolio5.0/'
alias zshreload="source ~/.zshrc"
alias el="eza -lh --no-permissions --icons --no-user --group-directories-first"
alias ea="eza -lah --git --no-permissions --icons --no-user --group-directories-first"
alias ls='eza'                                                          # ls
alias l='eza -lbF --git --icons --group-directories-first'              # list, size, type, git
alias lt='eza -lbF --git --icons  --tree --level=2'                     # tree
alias ll='eza -lbGF --git --group-directories-first --icons'            # long list
alias llm='eza -lbGd --git --sort=modified'                             # long list, modified date sort
alias la='eza -lbhHigUmuSa --icons --time-style=long-iso --git --color-scale --group-directories-first'  # all list
alias lx='eza -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list
alias cfg="cd ~/.config"
alias cfn="cd ~/.config/nvchad-custom && v"
alias l3="lsof -i :3000"
alias zc="v ~/.zshrc"
alias lg="lazygit"
alias fnd='\fd'
alias tx='tmuxinator'
alias txc='cd ~/.config/tmuxinator/ && v'
alias brew86="arch -x86_64 /usr/local/homebrew/bin/brew"
alias brewARM="/opt/homebrew/bin/brew"
alias rns="npx react-native start"
alias envd='nvim -d .env .env.example'
alias dockd='nvim -d .docker/local/docker-compose.yml .docker/local/docker-compose.yml.example'
alias kp=fkill
alias gmod="git merge origin $(git_develop_branch)"
alias gbcp="git branch --show-current | pbcopy"
alias gch=gch
alias vdiff="fzf -m 2 --bind 'enter:select+accept' | xargs -n 2 nvim -d"
alias fman="compgen -c | fzf | xargs man"
alias lst=lsFileType
alias plugs="nvim ~/.config/nvchad-custom/custom/plugins.lua"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3/lib/pkgconfig"
eval "$(rbenv init - zsh)"
eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"
# Append a command directly
# zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh')
export PATH="/opt/homebrew/opt/node@18/bin:$PATH"

eval $(thefuck --alias)
