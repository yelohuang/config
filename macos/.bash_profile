# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/w.huang/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/w.huang/Downloads/google-cloud-sdk/path.bash.inc'; fi

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH=$JAVA_HOME/bin:$PATH

source "$HOME/.bash_prompt"
export PATH="~/bin/:$PATH"
# export PS1="$(tput setaf 040)\u@$(tput setaf 060)\W:$(tput sgr0)";
# export PS1="\[\e[32m\]\u\[\e[35m\]@\[\e[32m\]\h \[\e[33m\]\w\[\e[36m\]\n\$\[\e[0m\]"

# appengine setup
export APPENGINE_HOME=~/Downloads/appengine-java-sdk-1.9.54
export PATH=${PATH}:$APPENGINE_HOME/bin/

# go
export GOPATH=$HOME/Snapchat/Dev/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

export NDK_CCACHE=/usr/local/bin/ccache

# GNU
export PATH="$PATH:/usr/local/opt/coreutils/libexec/gnubin"
export PATH="$PATH:/usr/local/opt/gnu-sed/libexec/gnubin"

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]; then
	# Ensure existing Homebrew v1 completions continue to work
	export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/etc/bash_completion.d";
	source "$(brew --prefix)/etc/profile.d/bash_completion.sh";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/w.huang/gcloud/google-cloud-sdk2/path.bash.inc' ]; then . '/Users/w.huang/gcloud/google-cloud-sdk2/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/w.huang/gcloud/google-cloud-sdk2/completion.bash.inc' ]; then . '/Users/w.huang/gcloud/google-cloud-sdk2/completion.bash.inc'; fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable color support of ls and also add handy aliases
alias ls='ls -G'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# launch into tmux
tmux source ~/.tmux.conf

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi
