
export PS1='\[\e[1;35m\][\[\e[1;33m\]\u@\h \[\e[1;31m\]\w\[\e[1;35m\]]\[\e[1;36m\]\$ \[\e[0m\]'

alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

eval "`dircolors`"
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
export LS_OPTIONS='--color=auto'

alias sc='screen -Rd "work"'
