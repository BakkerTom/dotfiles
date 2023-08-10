# Pure Prompt
autoload -U promptinit; promptinit
prompt pure

# Antigen plugin manager
source /usr/local/Cellar/antigen/2.2.3/share/antigen/antigen.zsh
antigen use oh-my-zsh

# Plugins
antigen bundle git

# Lazy load nvm for WICKED performance increase
export NVM_LAZY_LOAD=true
antigen bundle lukechilds/zsh-nvm

antigen apply

# ALIASSES
alias zshconfig="nvim ~/.zshrc"
alias cpip='ipconfig getifaddr en0 | pbcopy'
alias hmm='h-m-m'
alias vim='nvim'
alias lg='lazygit'

# Add Android tools to the path
export PATH="/Users/thbakker/Library/Android/sdk/platform-tools":$PATH

export ANDROID_HOME="/Users/thbakker/Library/Android/sdk"
export ANDROID_SDK_ROOT="/Users/thbakker/Library/Android/sdk"
export ANDROID_AVD_HOME="/Users/thbakker/.android/avd"
export PATH="/usr/local/sbin:$PATH"

export EDITOR=nvim

export RUBYOPT=-W0

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
alias jenv_set_java_home='export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"'

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Configure autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
