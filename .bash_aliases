# Misc :)
alias less='less -r'                          # raw control characters
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
alias vi='vim'

# Some shortcuts for different directory listings
alias ls='ls -hF --color=tty'                 # classify files in colour
alias du='du -h'
alias od='od -tcx1 -Ax'

# For MobaXterm settings
if type -a busybox >& /dev/null;then
  alias crond='/bin/crond'
  alias sed='/bin/sed'
  alias tar='/bin/tar'
  alias tree='/bin/tree'
fi
