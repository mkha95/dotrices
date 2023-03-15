# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export JULIA_NUM_THREADS=6

export PATH=/opt/homebrew/Cellar:$PATH
export PATH=$HOME/.torrench/bin:$PATH
export PATH=/opt/homebrew/Cellar/llvm/13.0.0_2/bin:$PATH
export PATH=/Applications/Julia-1.7.app/Contents/Resources/julia/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/moaadkhamlich/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

alias workstation='ssh  mkhamlic@kovalevskaya.maths.sissa.it'
alias hamilton='ssh -X mkhamlic@hamilton.maths.sissa.it'
alias ulisse='ssh mkhamlic@frontend2.hpc.sissa.it'
export hamilton='mkhamlic@hamilton.maths.sissa.it:/u/m/mkhamlic/reciver/'
export ulisse='mkhamlic@frontend2.hpc.sissa.it:/home/mkhamlic/reciver/'

export kova='mkhamlic@kovalevskaya.maths.sissa.it:/u/m/mkhamlic/reciver/'
export hami='mkhamlic@hamilton.maths.sissa.it:/u/m/mkhamlic/reciver/'

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
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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
export HOST="DuDe"
#between quotation marks is the tool output for LS_COLORS
export LSCOLORS=CxFxBxDxCxegedabagacad
alias bashrc='vim $HOME/.zshrc'
alias apc='cd ~/Courses/advanced_programming_2021/c++'
alias sc='source $HOME/.zshrc'
alias acta='cd $HOME/documents/ACTA; main'
alias aroma='cd $HOME/documents/AROMA/chapter-20; main'
alias vimrc='vim $HOME/.vimrc'
alias dd='cd ~/ITHACA-FV/projects/bologna_case/Data_Driven_method'
alias erc='cd ~/documents/erc_proposal/; main'
alias lg='git log --reverse'
alias gd='git diff| vi -'

source ~/opt/anaconda3/etc/profile.d/conda.sh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#determines search program for fzf
if type ag &> /dev/null; then
    export FZF_DEFAULT_COMMAND='ag -p ~/.gitignore -g ""'
fi
#refer rg over ag
if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files --hidden'
fi
ipaddr() { (awk '{print $2}' <(ifconfig eth0 | grep 'inet ')); }
alias bolo='cd ~/ITHACA-FV/projects/bologna_case/Data_Driven_method/'

#alias paper='cd ~/Documents/Paper-Khamlich-Pichi/paper_Khamlich_Pichi_IJNMF/'
alias paper='cd ~/paper_pod_deim; main'
alias thesis='cd ~/Documents/thesis; main'
alias clc='clear'
alias phd='cd ~/Nextcloud/Phd/'
alias kpod='cd /Users/moaadkhamlich/Nextcloud/Phd/Computational_optimal_transport/software/ott-jax/KPod/Poisson_KPOD; conda activate ml'

alias ithaca='docker run -ti --rm \
		-v "${HOME}:/home/ithacafv/${USER}" \
        --security-opt seccomp=unconfined \
		ithacafv/ithacafv:manifest-latest'
alias rubber="~/rubber/bin/rubber"
alias doc="cd ~/Documents"
