# Path
export PATH=~/bin:$PATH

# boot2docker
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=~/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# Perforce
export P4CONFIG=.p4settings

# Prompt
export PS1="[\w]$ "

# ls colors
export CLICOLOR=1
export LSCOLORS=BxDxFxFxGxFxFxBxBxGxGx

# Aliases
alias la='ls -la'
alias ll='ls -la'
alias killpyc='find . -name *.pyc -exec rm -fr {} \;'
alias killds='find . -name .DS_Store -exec rm -fr {} \;'
alias killmeta='find . -name \"*.meta\" -exec rm -fr {} \;'
alias dockerps='docker ps -a -q'
alias dockerstopall='docker stop $(dockerps)'
alias dockerrmall='docker rm $(dockerps)'
alias dockerclean='docker stop $(dockerps) && docker rm $(dockerps)'
alias gopath='export GOPATH=`pwd`'
