# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias op='xdg-open'

# Export for WebStorm IDE
export WEBIDE_JDK=/usr/java/jdk1.8.0_60/jre/

# Emacs no X
alias em='emacs -nw'
