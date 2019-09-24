# enviroment settings
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

# enviroment variables
set -x GOPATH $HOME/dev
set -x GOBIN $GOPATH/bin
set -x GOPROXY https://athens.azurefd.net/
set -x ANDROID_HOME $HOME/Library/Developer/Xamarin/android-sdk-macosx
set -x ANDROID_NDK $ANDROID_HOME/ndk-bundle
set -x JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home
set -x CLASSPATH $JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar
set -x RUSTUP_HOME $HOME/.rustup
set -x RUST_SRC_PATH $HOME/rust/rust
set -x RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup
set -x LDFLAGS "-L/usr/local/opt/tcl-tk/lib"
set -x CPPFLAGS "-I/usr/local/opt/tcl-tk/include"
set -x KUBE_EDITOR "vim"

# PATH
set -x PATH $PATH $GOROOT/bin
set -x PATH $PATH $GOBIN
set -x PATH $PATH $ANDROID_HOME/platform-tools
set -x PATH $PATH $ANDROID_HOME/emulator
set -x PATH $PATH $JAVA_HOME/bin/
set -x PATH $PATH $HOME/.cargo/bin
set -x PATH $PATH "/usr/local/opt/gettext/bin"
set -x PATH $PATH "/usr/local/opt/tcl-tk/bin"
set -x PATH $PATH "/Applications/Android Studio.app/Contents/gradle/gradle-4.4/bin"
set -x PATH $PATH "/Applications/Julia-1.0.app/Contents/Resources/julia/bin"
set -x PATH $PATH $HOME/anaconda3/bin
set -x PATH $PATH $HOME/sourceCode/chromium/depot_tools
set -x PATH $PATH $HOME/sourceCode/bazel/bazel/bazel-bin/src
set -x PATH $PATH $HOME/sourceCode/fuchsia/fuchsia/.jiri_root/bin
set -x PATH $PATH $HOME/.pub-cache/bin
set -x PATH $PATH $HOME/sourceCode/nginx/bin/sbin
