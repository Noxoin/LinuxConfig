# Most important setting in the world!
set -o vi

## Colors?  Used for the prompt.
#Regular text color
BLACK='\[\e[0;30m\]'
#Bold text color
BBLACK='\[\e[1;30m\]'
#background color
BGBLACK='\[\e[40m\]'
RED='\[\e[0;31m\]'
BRED='\[\e[1;31m\]'
BGRED='\[\e[41m\]'
GREEN='\[\e[0;32m\]'
BGREEN='\[\e[1;32m\]'
BGGREEN='\[\e[1;32m\]'
YELLOW='\[\e[0;33m\]'
BYELLOW='\[\e[1;33m\]'
BGYELLOW='\[\e[1;33m\]'
BLUE='\[\e[0;34m\]'
BBLUE='\[\e[1;34m\]'
BGBLUE='\[\e[1;34m\]'
MAGENTA='\[\e[0;35m\]'
BMAGENTA='\[\e[1;35m\]'
BGMAGENTA='\[\e[1;35m\]'
CYAN='\[\e[0;36m\]'
BCYAN='\[\e[1;36m\]'
BGCYAN='\[\e[1;36m\]'
WHITE='\[\e[0;37m\]'
BWHITE='\[\e[1;37m\]'
BGWHITE='\[\e[1;37m\]'
#Default Colour
DF='\[\e[0m\]'

# Generate PS1
export PROMPT_COMMAND=generate_prompt
function generate_prompt()
{
    if [ "$?" -eq "0" ]
    then
        EMOT="${BGREEN}(^o^)"
    else
        EMOT="${BRED}(>_<)\a"
    fi
    PS1="${BBLUE}\t ${EMOT} ${DF}>> "
}

# Ignore Ctrl-D logout signal
set -o ignoreeof
export IGNOREEOF=42

# Common Aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias restart="source ~/.bash_profile"

export VISUAL=vim
export EDITOR=vim

# Set Terminal Colour Scheme
export CLICOLOR=1
# export TERM=xterm-256color

# Added by install_latest_perl_osx.pl
[ -r /Users/dixon.cheung/.bashrc ] && source /Users/dixon.cheung/.bashrc

# MacPorts Installer addition on 2016-07-15_at_12:34:34: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

alias viper2_dumper='mysql Viper2_dumper -h 10.5.80.207 -u viper -p'

# Setup for platform test enviroment
export APP_IP=10.5.30.1
export DB_IP=10.5.30.7
export GUIAPP_IP=10.5.30.5
export AS_IP=10.5.30.10
export SCRAPER_HOST=10.5.30.7
export IX_HOSTNAME=as.indexexchange.com

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

asc () {
	FILENAME=/Users/dixon.cheung/test_outputs/`date '+%Y-%m-%d-%H-%M'`
	touch $FILENAME
	ln -sfn $FILENAME /Users/dixon.cheung/test_outputs/latest
	perl asc.t $@ 2>&1 | ( trap '' 2;
	FILENAME=/Users/dixon.cheung/test_outputs/`date '+%Y-%m-%d-%H-%M'`;
	tee -a $FILENAME | csuite.pl )
}

#_alarm() {
#	if [[ "x$1" -eq "x" ]]; then
#			freq=400
#	else
#			freq=$1
#	fi
#	if [[ "x$2" -eq "x" ]]; then
#			dur=400
#	else
#			dur=$2
#	fi
#	( \speaker-test --frequency $freq --test sine 2&>1 >/dev/null)&
#	pid=$!
#	\sleep 0.${dur}s
#	\kill -9 $pid
#}

if [ -f ~/.git-completion.bash ]; then
. ~/.git-completion.bash
fi

# Setup Fuck program
eval "$(thefuck --alias)"

export GOPATH=/Users/dixon.cheung/personal/golang

export REMOTE_IP_1=10.5.30.10
export REMOTE_IP_2=10.5.24.20
export DCAPP_1_HOSTNAME=dcapp001.casalemedia.com
export DCAPP_2_HOSTNAME=dcapp002.casalemedia.com
export DCAPP_3_HOSTNAME=dcapp003.casalemedia.com
export AS_1_HOSTNAME=a901.casalemedia.com
export AS_2_HOSTNAME=a902.casalemedia.com
export AS_3_HOSTNAME=a903.casalemedia.com

export GOPATH=$HOME/go
export PATH=$PATH:$(go env GOPATH)/bin
