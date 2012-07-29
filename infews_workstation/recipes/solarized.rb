installers_dir = "/Users/#{WS_USER}/cookbooks/installers"
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
  command "cd #{terminal_directory} && open 'Solarized Dark ansi.terminal'"
end

execute "Add Solarized Light for Terminal" do
  command "cd #{terminal_directory} && open 'Solarized Light ansi.terminal'"
end

solarized_textmate_theme_directory = "#{solarized_dir}/textmate-colors-solarized"
textmate_themes_directory = "\"#{WS_HOME}/Library/Application Support/TextMate/Bundles\""

execute "Add Solarized Dark for TextMate" do
  command "cp \"#{solarized_textmate_theme_directory}/Solarized\ (dark).tmTheme\" #{textmate_themes_directory}"
end

execute "Add Solarized Light for TextMate" do
  command "cp \"#{solarized_textmate_theme_directory}/Solarized\ (light).tmTheme\" #{textmate_themes_directory}"
end

solarized_jetbrains_theme_directory = "#{solarized_dir}/intellij-colors-solarized"
jetbrains_theme_dir = "#{WS_HOME}/Library/Preferences/RubyMine40/colors/"

execute "Add Solarized Dark for RubyMine" do
  command "cp \"#{solarized_jetbrains_theme_directory}/Solarized\ Dark.xml\" #{jetbrains_theme_dir}"
end

execute "Add Solarized Light for RubyMine" do
  command "cp \"#{solarized_jetbrains_theme_directory}/Solarized\ Light.xml\" #{jetbrains_theme_dir}"
end