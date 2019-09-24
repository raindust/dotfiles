# enviroment settings
set -xg LC_ALL en_US.UTF-8
set -xg LANG en_US.UTF-8

# enviroment variables
set -xg GOPATH $HOME/dev
set -xg GOBIN $GOPATH/bin
set -xg GOPROXY https://athens.azurefd.net/
set -xg ANDROID_HOME $HOME/Library/Developer/Xamarin/android-sdk-macosx
set -xg ANDROID_NDK $ANDROID_HOME/ndk-bundle
set -xg JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home
set -xg CLASSPATH $JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar
set -xg RUSTUP_HOME $HOME/.rustup
set -xg RUST_SRC_PATH $HOME/rust/rust
set -xg RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup
set -xg LDFLAGS "-L/usr/local/opt/tcl-tk/lib"
set -xg CPPFLAGS "-I/usr/local/opt/tcl-tk/include"
set -xg KUBE_EDITOR "vim"

# PATH
set -xg PATH $PATH $GOROOT/bin
set -xg PATH $PATH $GOBIN
set -xg PATH $PATH $ANDROID_HOME/platform-tools
set -xg PATH $PATH $ANDROID_HOME/emulator
set -xg PATH $PATH $JAVA_HOME/bin/
set -xg PATH $PATH $HOME/.cargo/bin
set -xg PATH $PATH "/usr/local/opt/gettext/bin"
set -xg PATH $PATH "/usr/local/opt/tcl-tk/bin"
set -xg PATH $PATH "/Applications/Android Studio.app/Contents/gradle/gradle-4.4/bin"
set -xg PATH $PATH "/Applications/Julia-1.0.app/Contents/Resources/julia/bin"
set -xg PATH $PATH $HOME/anaconda3/bin
set -xg PATH $PATH $HOME/sourceCode/chromium/depot_tools
set -xg PATH $PATH $HOME/sourceCode/bazel/bazel/bazel-bin/src
set -xg PATH $PATH $HOME/sourceCode/fuchsia/fuchsia/.jiri_root/bin
set -xg PATH $PATH $HOME/.pub-cache/bin
set -xg PATH $PATH $HOME/sourceCode/nginx/bin/sbin