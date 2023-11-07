#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew. Then it installs tools from the Brewfile. Finally it updates
# and cleans up Homebrew and tools.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
  fi

  # install dependencies from Brewfile
  brew bundle install --cleanup --file "$ZSH/homebrew/Brewfile"
fi

brew update
brew upgrade
brew cleanup || true
brew bundle dump --force --file "$ZSH/homebrew/Brewfile"

echo "[homebrew] In another shell execute:"
echo "  brew doctor"
echo "  # Address any issues"
echo "  brew cleanup; brew bundle dump --global --force"

exit 0
