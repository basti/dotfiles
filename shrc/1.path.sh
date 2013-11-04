# modified from https://github.com/mislav/dotfiles/raw/master/shrc/1.path.sh

if [ -n "$ZSH_VERSION" ]; then
  if [ "${(k)path[(r)/usr/bin]}" -lt "${(k)path[(r)/usr/local/bin]}" ]; then
    path=(${path#/usr/local/bin})
  fi
fi

PATH="/usr/local/sbin:$PATH"
PATH="/usr/local/bin:$PATH"
PATH="$HOME/bin:$PATH"

export PATH
# hm. don't use consolidate-path - it messes with order of paths, i.e. /usr/local/bin is put after /usr/bin
# export PATH="$(consolidate-path)"
