# install commit signing helper: pinentry-mac
# https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key
if command -v brew; then
	brew install pinentry-mac && echo "pinentry-program $(which pinentry-mac)" >> ~/.gnupg/gpg-agent.conf
	killall gpg-agent
fi