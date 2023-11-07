if ! command rvm ; then
  # https://rvm.io/rvm/install
  gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 D2BAF1CF37B13E2069D6956105BD0E739499BDB
  \curl -sSL https://get.rvm.io | bash -s stable --ruby --ignore-dotfiles
else
  rvm get stable 
  rvm cleanup all
fi

if command rvm ; then
  rvm install ruby-head || (yes | rvm upgrade ruby-head)
fi

# Upgrade gem tool
gem upgrade --system
# Upgrade ruby gems
gem upgrade
