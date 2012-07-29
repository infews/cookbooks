# Custom todo.txt install
#
# Dependencies
# * Homebrew
# * Pivotal Workstation Brew provider
# * Dropbox being installed
# * ~/Dropbox/todo/config being present and having the user's configuration

brew "todo-txt"

directory "#{WS_HOME}/.todo" do
  owner WS_USER
end

execute "copy config file from Dropbox" do
  command "cp #{WS_HOME}/Dropbox/todo/config #{WS_HOME}/.todo/config"
  only_if { File.exist? "#{WS_HOME}/Dropbox/todo"}
end
