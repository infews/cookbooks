
complete_message = <<-EOS
  \033[32mChef run complete.
  Run Dropbox app to connect and mount remote files.
  Then enable last recipes in \033[0msoloistrc\033[32m and then re-run \033[33msoloist\033[0m
EOS

execute "Run Complete" do
  command "echo '#{complete_message}'"
  user WS_USER
end