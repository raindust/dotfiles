if [ -z $TMUX ]; source ~/.config/fish/fish/envrc.fish; end
source ~/.config/fish/fish/aliases.fish

starship init fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /usr/local/Caskroom/miniconda/base/bin/conda
    eval /usr/local/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

eval "$(/opt/homebrew/bin/brew shellenv)"
