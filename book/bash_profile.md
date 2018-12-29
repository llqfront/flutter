# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

export NVM_DIR="/Users/hello/.nvm"
export PATH=$PATH:/Users/hello/.npm-packages/bin



export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator




export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_161.jdk/Contents/Home/"
export PATH=$JAVA_HOME/bin:$PATH
export CLASS_PATH=$JAVA_HOME/lib:$CLASS_PATH


http://ju.outofmemory.cn/entry/366783 


#PATH="/usr/local/var/mongodb/bin:${PATH}"
#export PATH


[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH


export GOROOT=/usr/local/go
#export GOOS=
#export GOARCH=
export GOPATH=/Users/hello/gowork/work
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
#export GOBIN=/Users/hello/go/project/work/bin
#export PATH=$PATH:$GOPATH:$GOBIN
#export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export PATH=/Users/hello/flutter/bin:$PATH
#export PATH=PATH_TO_FLUTTER_GIT_DIRECTORY/flutter/bin:$PATH


export NDK_HOME=${HOME}/Library/Android/sdk/ndk-bundle
export PATH=$PATH:$NDK_HOME/



export PATH=$PATH:/usr/local/mysql/bin
#[[ -s "/Users/hello/.gvm/scripts/gvm" ]] && source "/Users/hello/.gvm/scripts/gvm"
