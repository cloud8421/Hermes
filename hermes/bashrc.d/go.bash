program_exists () {
  type "$1" &> /dev/null ;
}

if program_exists go; then
  function setupGOROOT()
  {
    local GOBINPATH=`which go`
    local GODIR=`dirname $GOBINPATH`
    local GOPATH_BREW_RELATIVE=`readlink $GOBINPATH`
    local GOPATH_BREW=`dirname $GOPATH_BREW_RELATIVE`
    export GOROOT=`cd $GODIR; cd $GOPATH_BREW/..; pwd`
    export GOPATH=$HOME/gocode
    export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
  }
  setupGOROOT
fi
