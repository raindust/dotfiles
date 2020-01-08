# set alias
alias ls="exa"
#alias find="fd"
#alias grep="rg"
alias vi="nvim"
alias vim="nvim"
alias man2="tldr"
alias icloud="cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs"
alias hh=hstr

# Navigation
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

# Docker
alias dps='docker ps --format "table {{.Names}}\t{{.Status}}"'
alias dim='docker images --format "table {{.ID}}\t{{.Repository}}\t{{.Tag}}"'
alias dims='docker images --format "table {{.Repository}}\t{{.Size}}"'

# java
alias setJDK8='set -xg JAVA_HOME (/usr/libexec/java_home -v 1.8)'
alias setJDK11='set -xg JAVA_HOME (/usr/libexec/java_home -v 11)'
alias setJDK13='set -xg JAVA_HOME (/usr/libexec/java_home -v 13)'
