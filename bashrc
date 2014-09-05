# Path
export PATH=~/bin:$PATH

# Android
export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk

# Perforce
export P4CONFIG=.p4settings

# Prompt
export PS1="[\w]$ "

# ls colors
export CLICOLOR=1
export LSCOLORS=BxDxFxFxGxFxFxBxBxGxGx

# Aliases
alias la="ls -la"
alias ll="ls -la"
alias killpyc="find . -name *.pyc -exec rm -fr {} \;"
alias killds="find . -name .DS_Store -exec rm -fr {} \;"
alias killmeta="find . -name \"*.meta\" -exec rm -fr {} \;"
alias ndkgo="ndk-gdb --start"


