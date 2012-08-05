# Bootstrap script to setup for Chef soloist run
#
# Assumes a USB key or DMG, with a volume name of 'Untitled' that has the XCode.dmg
#
# ruby <(curl -s https://raw.github.com/infews/cookbooks/master/bootstrap.rb)

def log_step(str)
  "---> \033[32m#{str}\033[0m"
end

# install XCode from a flash drive
log_step "Installing XCode..."
log_step "(this takes a while...)"

system "hdiutil attach '/Volumes/Untitled/XCode.dmg'"
system "cp -R '/Volumes/XCode/XCode.app' '/Applications'"
system "open /Applications/XCode.app"
system "hdiutil detach '/Volumes/XCode'"

# TODO: Put the command line tools on the thumb drive and run again

# Wait until XCode and Command Line Tools are installed
log_step "Run XCode and install the Command Line Tools so we can continue"
system "read -p '\033[32m(Press Enter To Continue)\033[33m'"

# Install Soloist/Chef into system Ruby
log_step "Installing Soloist"
system "sudo gem install soloist --no-ri --no-rdoc"

# clone the repo & get all recipes
log_step "Get the cookbooks"
system "git clone --recursive http://github.com/infews/cookbooks.git"

log_step "Now Ready. Review cookbooks/soloistrc, then cd cookbooks && soloist"
log_step "Then run Dropbox, let it sync, then edit soloistrc, then run soloist again"