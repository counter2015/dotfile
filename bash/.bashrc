# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> scala-cli completions >>>
_scala-cli_completions() {
  local IFS=$'\n'
  eval "$(scala-cli complete bash-v1 "$(( $COMP_CWORD + 1 ))" "${COMP_WORDS[@]}")"
}

complete -F _scala-cli_completions scala-cli
# <<< scala-cli completions <<<