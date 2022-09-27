# add zplug
export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

# plugins
zplug "agkozak/zsh-z"
zplug load

# run tmux immediately
if [ "$TMUX" = "" ]; then tmux; fi

source ~/.d3/aliases

# enable nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# enable yarn binaries
export PATH=~/.yarn/bin:$PATH

# enable starship prompt
eval "$(starship init zsh)"

# Android SDK
export ANDROID_SDK_ROOT=~/Library/Android/sdk
export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_NDK_HOME=~/Library/Android/sdk/ndk/21.3.6528147
PATH="$PATH:~/Library/Android/sdk/platform-tools/"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

# fzf
source ~/.fzfrc