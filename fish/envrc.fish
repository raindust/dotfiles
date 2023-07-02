# enviroment settings
set -xg LC_ALL en_US.UTF-8
set -xg LANG en_US.UTF-8

# enviroment variables
set -xg GOPATH $HOME/dev
set -xg GOBIN $GOPATH/bin
set -xg GOPROXY https://mirrors.aliyun.com/goproxy
set -xg RUSTUP_HOME $HOME/.rustup

# PATH
set -xg PATH $PATH $GOROOT/bin
set -xg PATH $PATH $GOBIN
set -xg PATH $PATH $HOME/.cargo/bin
set -xg PATH $PATH /usr/local/cuda-12.1/bin
set -xg PATH $PATH $HOME/miniconda3/bin
set -xg PATH $PATH $HOME/.local/bin

# Other
set -xg DISABLE_AUTO_TITLE "true"
