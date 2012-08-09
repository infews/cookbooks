# Keep SSH config on Dropbox
link "/Users/#{WS_USER}/.ssh" do
  to "/Users/#{WS_USER}/Dropbox/.ssh"
  only_if { File.exist? "#{WS_HOME}/Dropbox/.ssh"}
end