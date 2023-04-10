#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#. $(brew --prefix)/etc/bash_completion
#fi

. ~/.envrc

eval "$(starship init bash)"
