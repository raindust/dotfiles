# enviroment settings
set -xg LC_ALL en_US.UTF-8
set -xg LANG en_US.UTF-8

# enviroment variables
set -xg GOPATH $HOME/dev
set -xg GOBIN $GOPATH/bin
set -xg GOPROXY https://goproxy.cn
set -xg RUSTUP_HOME $HOME/.rustup
set -xg RUST_SRC_PATH $HOME/rust/rust
set -xg RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup
set -xg KUBE_EDITOR "vim"

# PATH
set -xg PATH $PATH $GOROOT/bin
set -xg PATH $PATH $GOBIN
set -xg PATH $PATH $HOME/.cargo/bin

# Other
set -xg DISABLE_AUTO_TITLE "true"
