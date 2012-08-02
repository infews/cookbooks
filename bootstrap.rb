#!/usr/bin/ruby

#
# Bootstrap script to setup for Chef soloist run
#
# Assumes a USB key or DMG, with a volume name of 'Untitled' that has the XCode.dmg
#
# bash <(curl -s https://raw.github.com/infews/cookbooks/master/bootstrap.rb)

# install XCode from a flash drive
puts "---> Installing XCode. Make sure to install the Command Line Tools"
puts "---> (this takes a while...)"
system "hdiutil attach '/Volumes/Untitled/XCode.dmg'"
system "cp -R '/Volumes/XCode/XCode.app' '/Applications'"
system "open /Applications/XCode.app"
system "hdiutil detach '/Volumes/XCode'"

# Install Soloist/Chef into system Ruby
puts "---> Installing Soloist"
system "sudo gem install solost"

# clone the repo & get all recipes
puts "---> Get the cookbooks"
system "git clone http://github.com/infews/cookbooks.git"
system "cd cookbooks && git submodule init --update"

puts "---> Now Ready. Review cookbooks/soloist.rc, then cd cookbooks && soloist"
puts "---> Then run Dropbox, let it sync, then edit soloistrc, then run soloist again"