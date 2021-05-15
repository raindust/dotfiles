# enviroment settings
set -xg LC_ALL en_US.UTF-8
set -xg LANG en_US.UTF-8

# enviroment variables
set -xg GOPATH $HOME/dev
set -xg GOBIN $GOPATH/bin
set -xg GOPROXY https://goproxy.io
set -xg RUSTUP_HOME $HOME/.rustup
set -xg KUBE_EDITOR "vim"
set -xg ALL_PROXY http://192.168.0.103:3213

# PATH
set -xg PATH $PATH $GOROOT/bin
set -xg PATH $PATH $GOBIN
set -xg PATH $PATH $HOME/.cargo/bin
set -xg PATH $PATH "/usr/local/opt/postgresql@10/bin"

# Other
set -xg DISABLE_AUTO_TITLE "true"
