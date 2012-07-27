# Custom todo.txt install
#
# Dependencies
# * Homebrew
# * Pivotal Workstation Brew provider
# * Dropbox being installed
# * ~/Dropbox/todo/config being present and having the user's configuration
#
#
# Copyright 2012 Infews LLC
# Licensed via the MIT license

brew "todo-txt"

directory "/Users/#{WS_USER}/.todo" do
  owner WS_USER
end

execute "copy config file from Dropbox" do
  command "cp ~/Dropbox/todo/config ~/.todo/config"
end
