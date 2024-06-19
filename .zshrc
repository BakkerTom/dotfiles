# Path to my dotfiles
export DOTFILES=$HOME/.dotfiles
export SECRETS=$DOTFILES/secrets.sh

# ======== ANTIGEN ========= #
source $(brew --prefix)/share/antigen/antigen.zsh
antigen use oh-my-zsh

# Plugins
antigen bundle git

# Lazy load nvm for WICKED performance increase
export NVM_LAZY_LOAD=true
antigen bundle lukechilds/zsh-nvm
antigen bundle zsh-users/zsh-syntax-highlighting
# antigen bundle zsh-users/zsh-autosuggestions

antigen apply

# ======== PURE PROMPT ========= #
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

# ======== ALIASSES ========= #
# Shortcuts
alias zshconfig="nvim ~/.zshrc"
alias cpip='ipconfig getifaddr en0 | pbcopy'
alias vim='nvim'
alias lg='lazygit'

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Libary"
alias dev="cd $HOME/Developer"

# ======== ENVIRONMENT ========= #
export EDITOR=nvim
export RUBYOPT=-W0

# ======== PATH ========= #
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=~/Library/Android/sdk/tools:$PATH
export PATH=~/Library/Android/sdk/platform-tools:$PATH

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

# ======== JENV ========= #
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
alias jenv_set_java_home='export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"'

# ====== ANDROID ======== #
export ANDROID_HOME=~/Library/Android/sdk

# ======== RUBY ========= #
source $HOMEBREW_PREFIX/opt/chruby/share/chruby/chruby.sh
source $HOMEBREW_PREFIX/opt/chruby/share/chruby/auto.sh

# ======== AUTOJUMP ========= #
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# flashlight
export PATH="/Users/thbakker/.flashlight/bin:$PATH"

source $SECRETS

eval "$(zoxide init zsh)"
export PATH=$PATH:$HOME/.maestro/bin
