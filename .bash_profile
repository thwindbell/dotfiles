# setting of terminal color
alias ls='/usr/local/bin/gls --color=auto'
# eval $(gdircolors ~/dircolors-solarized/dircolors.256dark)
# eval $(gdircolors ~/dircolors-solarized/dircolors.ansi-universal)
eval $(gdircolors ~/dircolors-solarized/dircolors.ansi-dark)
# eval $(gdircolors ~/dircolors-solarized/dircolors.ansi-light)
export PS1='\[\e[33m\]\u \[\e[37m\]\t \[\e[31m\] $ '

# setting of virtualenv
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  export WORKON_HOME=$HOME/.virtualenvs
  source /usr/local/bin/virtualenvwrapper.sh
fi

# setting of pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# setting of bash-completion
if [ -f /usr/local/Cellar/bash-completion/1.3_1/etc/profile.d/bash_completion.sh ]; then
  . /usr/local/Cellar/bash-completion/1.3_1/etc/profile.d/bash_completion.sh
fi
