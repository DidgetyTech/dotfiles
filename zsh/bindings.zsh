# Use vi mode
bindkey -v

# Normal kwys work
bindkey '^[[3~' delete-char # delete key (delete to the right)
bindkey '^?' backward-delete-char # backspace (delete to the left)
bindkey '^H' backward-delete-char # backspace (delete to the left) on mac

# Better history
# Credits to https://coderwall.com/p/jpj_6q/zsh-better-history-searching-with-arrow-keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey -a "^[[A" up-line-or-beginning-search # Up, normal mode
bindkey -a "^[[B" down-line-or-beginning-search # Down, normal mode
bindkey -a '/' history-incremental-search-backward # /, normal mode

# Familiar line navigation, emacs-style
bindkey "^A" vi-beginning-of-line # Ctrl+a (after)
bindkey "^E" vi-end-of-line # Ctrl+e (end)
bindkey '^R' history-incremental-search-backward # Ctrl+r (reverse), consider using / and ? in normal mode instead
