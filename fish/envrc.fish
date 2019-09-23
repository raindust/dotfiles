# enviroment settings
set LC_ALL en_US.UTF-8
set LANG en_US.UTF-8

# enviroment variables
set GOPATH $HOME/dev
set GOBIN $GOPATH/bin
set GOPROXY https://athens.azurefd.net/
set ANDROID_HOME $HOME/Library/Developer/Xamarin/android-sdk-macosx
set ANDROID_NDK $ANDROID_HOME/ndk-bundle
set JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home
set CLASSPATH $JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar
set RUSTUP_HOME $HOME/.rustup
set RUST_SRC_PATH $HOME/rust/rust
set RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup
set LDFLAGS "-L/usr/local/opt/tcl-tk/lib"
set CPPFLAGS "-I/usr/local/opt/tcl-tk/include"
set KUBE_EDITOR "vim"

# PATH
set PATH $PATH $GOROOT/bin
set PATH $PATH $GOBIN
set PATH $PATH $ANDROID_HOME/platform-tools
set PATH $PATH $ANDROID_HOME/emulator
set PATH $PATH $JAVA_HOME/bin/
set PATH $PATH $HOME/.cargo/bin
set PATH $PATH "/usr/local/opt/gettext/bin"
set PATH $PATH "/usr/local/opt/tcl-tk/bin"
set PATH $PATH "/Applications/Android Studio.app/Contents/gradle/gradle-4.4/bin"
set PATH $PATH "/Applications/Julia-1.0.app/Contents/Resources/julia/bin"
set PATH $PATH $HOME/anaconda3/bin
set PATH $PATH $HOME/sourceCode/chromium/depot_tools
set PATH $PATH $HOME/sourceCode/bazel/bazel/bazel-bin/src
set PATH $PATH $HOME/sourceCode/fuchsia/fuchsia/.jiri_root/bin
set PATH $PATH $HOME/.pub-cache/bin
set PATH $PATH $HOME/sourceCode/nginx/bin/sbin
