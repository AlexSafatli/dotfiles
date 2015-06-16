function ruby_env {

  if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

}

function setup_terminal {

  # Enable Colors in Mac Terminal
  export CLICOLOR=1

  # Ignore SVN Directories
  export FIGNORE=.svn

  # Default Editor
  export EDITOR=subl # Sublime Text 2

  # Source Appropriate Files
  source .colors # Variables for Bash Prompt Colors
  source .git-prompt.sh # From Git -- Allows Reading Names of Repo/Branch to PS1
  source .prompt # Setup PS1 Prompt
  source .aliases # Terminal Aliases

}

function all {

  setup_terminal
  ruby_env
  
}

all