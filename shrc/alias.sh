# for current shell set Ruby version in order to ignore .ruby-version
# this is useful when you have Rails app within Docker and no Ruby locally
if command -v rbenv >/dev/null 2>&1; then
	alias rbenvignore="rbenv shell $(rbenv global)"
fi

alias irbdocker="docker run -it --rm ruby:alpine irb"
alias irbdockerpwd="docker run -it --rm -v "$PWD":/app -w /app ruby:alpine irb"
