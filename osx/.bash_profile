function ruby_env {
  if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
}

function setup_aliases {
  alias untar="tar -xzvf"
}

function setup_terminal {

  # Enable Colors in Mac Terminal
  export CLICOLOR=1

  # Ignore SVN Directories
  export FIGNORE=.svn

  # Default Editor
  export EDITOR=subl # Sublime Text 2

}

function all {
  setup_terminal
  setup_aliases
  ruby_env
}

all