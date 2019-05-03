function ruby_env {

  if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

}

function golang_env {

  export GOPATH=$HOME/go
  export GOROOT=$HOME/go
  export PATH=$PATH:$GOROOT/bin:/usr/local/go/bin

}

function setup_terminal {

  # Enable Colors in Mac Terminal
  export CLICOLOR=1

  # Ignore SVN Directories
  export FIGNORE=.svn

  # Default Editor
  export EDITOR='subl -n -w' # Sublime Text 2

  # Source Appropriate Files
  source $HOME/.colors # Variables for Bash Prompt Colors
  source $HOME/.git-prompt.sh # From Git -- Allows Reading Names of Repo/Branch to PS1
  source $HOME/.git-completion.bash # From Git -- Allows Autocompletion
  source $HOME/.prompt # Setup PS1 Prompt
  source $HOME/.aliases # Terminal Aliases

}

function all {

  setup_terminal
  ruby_env
  golang_env  

}

all
