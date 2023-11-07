# Updates cwd/Brewfile with changes since last invocation

# Assumes $ZSH is set in .zshrc before this file is sourced

if command -v brew; then
	pushd "$ZSH/homebrew" &> /dev/null

	# recreate Brewfile
	brew bundle dump --force --describe

	popd &> /dev/null
fi