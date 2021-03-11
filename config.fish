if status is-interactive
and not set -q TMUX
    exec tmux
end
set -gx PATH ~/.cargo/bin $PATH /usr/local/bin/nvim-osx64/bin/ /Users/dancooke/.cargo/bin/racer

set -x EDITOR nvim


set -x FrameworkPathOverride /Library/Frameworks/Mono.framework/Versions/Current/Commands/mono
set TERM xterm-256color
set -gx FZF_DEFAULT_COMMAND 'rg --files --hidden'

# Base16 Shell
if status is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

alias fishconfig='vim ~/.config/fish/config.fish'
alias alacconfig='vim ~/.config/alacritty/alacritty.yml'
alias vimrc='nvim ~/.config/nvim/init.vim'
alias tmuxconfig='vim ~/.tmux.conf'
alias tkill='tmux ks'

alias vim='nvim'
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder

alias dkill='docker stop (docker ps -a -q) && docker rm (docker ps -a -q)'
alias ports='sudo lsof -i -P -n | grep LISTEN'



##########################
#   GIT ALIASES
alias ggraph='git log --oneline --decorate --graph'
alias gcurrbranch='git rev-parse --symbolic-full-name --abbrev-ref HEAD'
###########################
alias mux='tmuxinator'
alias pstart='tmuxinator start pstart'

function b
    bash -c (read)
end


function killport
	echo Killing process on port $argv
	sudo lsof -i:$argv | sudo xargs kill -9
end
