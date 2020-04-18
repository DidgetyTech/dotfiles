export CLICOLOR=true
autoload colors && colors

# VI Mode
export KEYTIMEOUT=1

source ${HOME}/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source ${ZSH}/zsh/p10k.sh

# Prevent p10k configuration toolfrom running
p10k() {
  case $1 in
    configure)
      echo "edit ${ZSH}/zsh/p10k.sh directly"
      exit 1
      ;;
    *)
      command p10k "$@"
      ;;
  esac    
}
