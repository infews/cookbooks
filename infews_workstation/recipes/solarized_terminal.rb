installers_dir = "~/installers"
solarized_dir = "#{installers_dir}/solarized"

execute "Clone cap10morgan's Solarized fork'" do
  command "cd #{installers_dir} && git clone https://github.com/cap10morgan/solarized.git"
  not_if { File.exist? "#{solarized_dir}" }
end

execute "Pull Solarized up to latest" do
  command "cd #{solarized_dir} && git pull"
end

terminal_directory = "#{solarized_dir}/osx-terminal.app-colors-solarized"
execute "Add Solarized Dark for Terminal" do
  command "cd #{terminal_directory} && open Solarized\ Dark\ ansi.terminal"
end

execute "Add Solarized Light for Terminal" do
  command "cd #{terminal_directory} && open Solarized\ Light\ ansi.terminal"
end

textmate_theme_directory = "#{solarized_dir}/textmate-colors-solarized"
execute "Add Solarized Dark for TextMate" do
  command "cd #{textmate_theme_directory} && open Solarized\ (dark).tmTheme"
end

execute "Add Solarized Light for TextMate" do
  command "cd #{textmate_theme_directory} && open Solarized\ (light).tmTheme"
end
