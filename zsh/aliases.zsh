# Thanks to Oh-my-zsh contributors for colorizing ls
# https://github.com/ohmyzsh/ohmyzsh/blob.master.kib/theme-and-appearance.zsh

alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

alias grepsrc="find src -type f | xargs grep --line-number"
alias greptest="find test -type f | xargs grep --line-number"

alias lc='colorls --almost-all --long --sort-dirs'
alias lg='colorls --git-status'
if command -v colorls &> /dev/null; then
    # prefer colorls
    alias ls='colorls --git-status'
    alias tree='ls --tree'
    alias gls='gls --color=tty'
elif command -v gls &> /dev/null; then
    # prefer gnu ls
    alias ls='gls --color=tty'
    alias gls='gls --color=tty'
else
    # colorize plain ls
    ls -G . &> /dev/null && alias ls='ls -G'
fi
alias lsa='ls -A'
alias lsal='ls -Al'

