# enviroment settings
set -xg LC_ALL en_US.UTF-8
set -xg LC_CTYPE en_US.UTF-8
set -xg LANG en_US.UTF-8

# enviroment variables
set -xg GOPATH $HOME/dev
set -xg GOBIN $GOPATH/bin
set -xg GOROOT /usr/local/go
set -xg GOPROXY https://goproxy.io,direct
set -xg RUSTUP_HOME $HOME/.rustup
set -xg RUSTUP_DIST_SERVER https://rsproxy.cn
set -xg RUSTUP_UPDATE_ROOT https://rsproxy.cn/rustup
set -xg ALL_PROXY http://localhost:3213
set -xg HOMEBREW_BREW_GIT_REMOTE "https://mirrors.ustc.edu.cn/brew.git"
set -xg HOMEBREW_CORE_GIT_REMOTE "https://mirrors.ustc.edu.cn/homebrew-core.git"
set -xg HOMEBREW_BOTTLE_DOMAIN "https://mirrors.ustc.edu.cn/homebrew-bottles"

# PATH
set -xg PATH $PATH $GOROOT/bin
set -xg PATH $PATH $GOBIN
set -xg PATH $PATH $HOME/.cargo/bin
set -xg PATH $PATH $HOME/.local/share/solana/install/active_release/bin

# Other
set -xg DISABLE_AUTO_TITLE "true"
