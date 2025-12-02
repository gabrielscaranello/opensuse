# Init GO Path on init Plasma

if [ -d "$HOME/go" ]; then
	export GOPATH=$HOME/go
	export GOBIN=$GOPATH/bin
	export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
fi

if [ -d "/usr/local/go" ]; then
    export PATH=$PATH:/usr/local/go/bin
fi
