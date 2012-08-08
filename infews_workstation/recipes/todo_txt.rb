brew "todo-txt"

directory "#{WS_HOME}/.todo" do
  owner WS_USER
end

execute "Copy config file from Dropbox" do
  command "cp #{WS_HOME}/Dropbox/todo/config #{WS_HOME}/.todo/config"
  user WS_USER
  only_if { File.exist? "#{WS_HOME}/Dropbox/todo"}
end

link "#{WS_HOME}/bin/todo" do
  to "/usr/local/bin/todo.sh"
end

