# setting of terminal color
alias ls='/usr/local/bin/gls --color=auto'
# eval $(gdircolors ~/dircolors-solarized/dircolors.ansi-universal)
eval $(gdircolors ~/dircolors-solarized/dircolors.256dark)

# setting of virtualenv
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  export WORKON_HOME=$HOME/.virtualenvs
  source /usr/local/bin/virtualenvwrapper.sh
fi

# setting of pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
