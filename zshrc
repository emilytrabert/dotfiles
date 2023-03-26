export PATH=/Users/emilytrabert/apache-maven-3.5.3/bin:/usr/local/texlive/2017/bin/x86_64-darwin/:$PATH

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR=nano

# Path to your oh-my-zsh installation.
export ZSH="/Users/emilytrabert/.oh-my-zsh"
ZSH_THEME="emilytrabert"

export GEM_HOME="$HOME/.gem"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="emilytrabert"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ng)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cdw="cd ~/workspace"

# Ruby Bundle
function rails_command() {
	bundle exec rails $1 $2 $3 $4 $5 $6 $7
}
alias rs="rails_command server"
alias rc="rails_command console"
alias rg="rails_command generate"
alias be="bundle exec"
alias db-migrate="bundle exec rake db:migrate"
alias db-setup="bundle exec rake db:setup"
alias db-seed="bundle exec rake db:seed"

# Ruby Rake
function ruby_rake_pattern() {
  /Users/emilytrabert/.asdf/installs/ruby/2.6.6/bin/ruby -I/Users/emilytrabert/.gem/gems/rspec-core-3.9.2/lib:/Users/emilytrabert/.gem/gems/rspec-support-3.9.3/lib /Users/emilytrabert/.gem/gems/rspec-core-3.9.2/exe/rspec --pattern $1
}
alias rake-pattern="ruby_rake_pattern"

# Git
function how-crb() {
	echo "git checkout --track origin/<branch>"
}
function git-ntb() {
	git checkout -b Tasks/$1
}
function how-pnb() {
	echo "git push -u origin <branch>"
}


export ORACLE_HOME=~/Downloads/instantclient_19_8
export ORACLE_SID=asdb
export TNS_ADMIN=$ORACLE_HOME/network/admin
export NLS_LANG=English_America.UTF8
export PATH=$PATH:$ORACLE_HOME

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Cisco AnyConnect
# Setup with security add-generic-password -T "[password]" -a "EDCVPN LabCorp" -s trabere
function cisco_connect() {
	CON_STR="connect \"EDCVPN LabCorp\"\ntrabere\n$(/usr/bin/security find-generic-password -w -a "EDCVPN LabCorp" -s trabere)\n2\ny\nexit"
	# echo $CON_STR
	printf $CON_STR | /opt/cisco/anyconnect/bin/vpn -s
}
alias cisco="cisco_connect"
alias nocisco='/opt/cisco/anyconnect/bin/vpn disconnect'


. $HOME/.asdf/asdf.sh

. /usr/local/opt/asdf/asdf.sh
