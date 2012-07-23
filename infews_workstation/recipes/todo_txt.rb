brew "todo-txt"

directory "/Users/#{node[:username]}/.todo" do
  owner node[:username]
end

execute "copy config file from Dropbox" do
  command "cp ~/Dropbox/todo/config ~/.todo/config"
end
