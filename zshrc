# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="basti"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse bundler)
plugins=(git brew gem heroku basti osx)

# Homebrew shell completions
# https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  # autoload -Uz compinit
  # compinit
fi

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# load separate config files
for file in ~/.shrc/*.sh; do
  source "$file"
done

# rbenv
eval "$(rbenv init -)"

# taken from http://justinlilly.com/dotfiles/zsh.html
# man for options: http://linux.die.net/man/1/zshoptions
# setopt appendhistory autocd nomatch autopushd pushdignoredups promptsubst
unsetopt correct_all

if [ `which fortune` ]; then
  echo ""
  fortune
fi
