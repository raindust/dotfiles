# set alias
# alias ls="exa"
alias vi="nvim"
alias vim="nvim"
alias man2="tldr"
alias hh=hstr
alias du=dust
alias ls="exa"
alias tree="exa --tree"

# Navigation
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

# Docker
alias dps='docker ps --format "table {{.Names}}\t{{.Status}}"'
alias dim='docker images --format "table {{.ID}}\t{{.Repository}}\t{{.Tag}}"'
alias dims='docker images --format "table {{.Repository}}\t{{.Size}}"'
