mkdir -p ~/.zsh/completion
curl \
  -L https://raw.githubusercontent.com/docker/compose/1.29.2/contrib/completion/zsh/_docker-compose \
  -o ~/.zsh/completion/_docker-compose
fpath=(~/.zsh/completion $fpath)
brew cleanup
autoload -Uz compinit && compinit -i
exec $SHELL -l
