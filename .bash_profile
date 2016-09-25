# setting of terminal color
alias ls='/usr/local/bin/gls --color=auto'
# eval $(gdircolors ~/dircolors-solarized/dircolors.256dark)
# eval $(gdircolors ~/dircolors-solarized/dircolors.ansi-universal)
eval $(gdircolors ~/dircolors-solarized/dircolors.ansi-dark)
# eval $(gdircolors ~/dircolors-solarized/dircolors.ansi-light)
export PS1='\[\e[33m\]\u \[\e[37m\]\t \w/ \[\e[31m\] $ '

# setting of virtualenv
export WORKON_HOME=$HOME/.virtualenvs
# setting of virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
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

# setting of python-naoqi-sdk
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/pynaoqi-python2.7-2.4.3.28-mac64
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/lib/pynaoqi-python2.7-2.4.3.28-mac64

# unicode setting
export PATH=/usr/local/bin:$PATH
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

# rmtrash
alias rm='rmtrash'

