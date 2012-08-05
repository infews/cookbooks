solarized_dir = "#{Chef::Config[:file_cache_path]}/solarized"

# This is the best Solarized implementation for MacOS Terminal
execute "Clone cap10morgan's Solarized fork" do
  command "cd #{Chef::Config[:file_cache_path]} && git clone https://github.com/cap10morgan/solarized.git"
  user WS_USER
  not_if { File.exist? "#{solarized_dir}" }
end

execute "Pull Solarized up to latest" do
  command "cd #{solarized_dir} && git pull"
  user WS_USER
end

terminal_directory = "#{solarized_dir}/osx-terminal.app-colors-solarized"

execute "Add Solarized Dark for Terminal" do
  command "cd #{terminal_directory} && open 'Solarized Dark ansi.terminal'"
  user WS_USER
end

execute "Add Solarized Light for Terminal" do
  command "cd #{terminal_directory} && open 'Solarized Light ansi.terminal'"
  user WS_USER
end

solarized_jetbrains_theme_directory = "#{solarized_dir}/intellij-colors-solarized"
jetbrains_theme_dir = "#{WS_HOME}/Library/Preferences/RubyMine40/colors/"

directory "#{WS_HOME}/Library/Preferences/RubyMine40/colors/" do
  recursive true
  user WS_USER
end

execute "Add Solarized Dark for RubyMine" do
  command "cp \"#{solarized_jetbrains_theme_directory}/Solarized\ Dark.xml\" #{jetbrains_theme_dir}"
  user WS_USER
end

execute "Add Solarized Light for RubyMine" do
  command "cp \"#{solarized_jetbrains_theme_directory}/Solarized\ Light.xml\" #{jetbrains_theme_dir}"
  user WS_USER
end