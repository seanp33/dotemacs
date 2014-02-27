export PATH=/usr/local/bin:$PATH
export PATH="${HOME}/bin:${PATH}"

export DEV_HOME=~/Development
alias 2dev="cd ${DEV_HOME}"

export KITS_HOME=${DEV_HOME}/kits
alias 2kits="cd ${KITS_HOME}"

export TOOLS_HOME=${DEV_HOME}/tools
alias 2tools="cd ${TOOLS_HOME}"

export SERVERS_HOME=${DEV_HOME}/servers
alias 2servers="cd ${SERVERS_HOME}"

export MOZDEV_HOME=${DEV_HOME}/moz-dev
alias 2mozdev="cd ${MOZDEV_HOME}"

# mozconfig per https://developer.mozilla.org/en-US/docs/Configuring_Build_Options
#export MOZCONFIG=${DEV_HOME}/opensource/mozilla/seanp33.mozconfig

export JAVA_HOME=/Library/Java/Home

export ANT_HOME=${TOOLS_HOME}/ant-home
export PATH="${ANT_HOME}/bin:${PATH}"

export GROOVY_HOME=/usr/local/Cellar/groovy/2.1.1/libexec

#aws 
export AWS_AUTO_SCALING_HOME="${TOOLS_HOME}/aws/aws-autoscaling-tools-1.0.61.2"
export AWS_CREDENTIAL_FILE="${DEV_HOME}/aws/credential-file" 
export PATH="${AWS_AUTO_SCALING_HOME}/bin:$PATH"

export AWS_CLOUDFORMATION_HOME="${TOOLS_HOME}/aws/aws-cloudformation-tools-1.0.12"
export PATH="${AWS_CLOUDFORMATION_HOME}/bin:$PATH"

# ruby
# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# jruby
export JRUBY_HOME="${KITS_HOME}/jruby-home"
export PATH="${JRUBY_HOME}/bin:$PATH"

# Haskell platform
# http://hackage.haskell.org/platform/mac.html
export PATH="$HOME/Library/Haskell/bin:$PATH"

# CUDA
export CUDA_ROOT="/usr/local/cuda"
export PATH="${CUDA_ROOT}/bin:${PATH}"

export HADOOP_HOME=/data/cloud/hadoop
export PATH="${HADOOP_HOME}/bin:${PATH}"
alias 2hadoop="cd ${HADOOP_HOME}"

export ZOOKEEPER_HOME=/data/cloud/zookeeper
export PATH="${ZOOKEEPER_HOME}/bin:${PATH}"
alias 2zookeeper="cd ${ZOOKEEPER_HOME}"

export ACCUMULO_HOME=/data/cloud/accumulo
export PATH="${ACCUMULO_HOME}/bin:${PATH}"
alias 2accumulo="cd ${ACCUMULO_HOME}"

export QPID_HOME=${SERVERS_HOME}/qpid-current
export PATH="${QPID_HOME}/bin:${PATH}"
alias 2qpid="cd ${QPID_HOME}"

export M2_HOME=${TOOLS_HOME}/maven-home
export PATH="${M2_HOME}/bin:${PATH}"
export MAVEN_OPTS="-Xms512m -Xmx1024m -XX:MaxPermSize=512m -Dperecep.certdir=$JETTY_HOME/etc"

export GRADLE_HOME=${TOOLS_HOME}/gradle-home
export PATH="${GRADLE_HOME}/bin:$PATH"

export NODE_PATH="/usr/local/lib/node"
export PATH="/usr/local/share/npm/bin:$PATH"

export FINDBUGS_HOME="${TOOLS_HOME}/findbugs-home"
export PATH="${FINDBUGS_HOME}/bin:$PATH"

# moai
export MOAI_HOME=${KITS_HOME}/moai-current
export MOAI_BIN=${MOAI_HOME}/bin/osx
export MOAI_SPEC_RUNNER=${MOAI_HOME}/bin/osx/moai
export MOAI_CONFIG=${MOAI_HOME}/samples/config
export PATH="${MOAI_BIN}:${PATH}"

# android
export ANDROID_HOME=${KITS_HOME}/adt-bundle-mac-x86_64-20131030/sdk
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH

# play
export PLAY_HOME=${KITS_HOME}/play-home
export PATH=$PLAY_HOME:$PATH
alias 2play="cd ${PLAY_HOME}"

# per lc setup
#export PATH="/usr/local/share/npm/bin/:${PATH}"

# after installing volo via npm, it's still not on path
# explicity adding
#export PATH="/usr/local/share/npm/lib/node_modules/volo/bin/:${PATH}"
#export PATH="/usr/local/share/npm/lib/node_modules/grunt-cli/bin:${PATH}"

alias 2maven="cd ${M2_HOME}"
alias mci="mvn clean install"
alias mci!="mvn clean install -Dmaven.test.skip=true"
alias mjr="mvn jetty:run"
alias mrp="mvn -Dusername=seanp33"
alias 2repo="cd ~/.m2/repository"

alias 2npm="cd ~/.npm"
alias ll="ls -la"

export PATH=/usr/local/git/bin:${PATH}
alias g="git"

alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias emp="emacs ~/.profile"

# lua
export LDOC_HOME=${TOOLS_HOME}/LDoc
alias ldoc="lua ${LDOC_HOME}/ldoc.lua"

# shadowamn
alias 2sm="cd ${DEV_HOME}/projects/shadowman"
alias purple="java -cp agent/target/shadowman-agent-1.0.0-SNAPSHOT.jar shadowman.Main purple.xml -Dcom.sun.management.jmxremote"
alias green="java -cp agent/target/shadowman-agent-1.0.0-SNAPSHOT.jar shadowman.Main green.xml -Dcom.sun.management.jmxremote"
alias red="java -cp agent/target/shadowman-agent-1.0.0-SNAPSHOT.jar shadowman.Main red.xml -Dcom.sun.management.jmxremote"
alias blue="java -cp agent/target/shadowman-agent-1.0.0-SNAPSHOT.jar shadowman.Main blue.xml -Dcom.sun.management.jmxremote"
alias orange="java -cp agent/target/shadowman-agent-1.0.0-SNAPSHOT.jar shadowman.Main orange.xml -Dcom.sun.management.jmxremote"
alias brown="java -cp agent/target/shadowman-agent-1.0.0-SNAPSHOT.jar shadowman.Main brown.xml -Dcom.sun.management.jmxremote"

function parse_git_branch () {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$GREEN\h$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "

#javascript pretty print
alias jpp="python -mjson.tool"

PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

# Setting PATH for Python 2.7
# The orginal version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
