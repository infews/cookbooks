solarized_dir = "#{Chef::Config[:file_cache_path]}/textmate-solarized"

# This is the best Solarized implementation for Textmate
execute "Clone Textmate/Solarized" do
  command "cd #{Chef::Config[:file_cache_path]} && git clone https://github.com/deplorableword/textmate-solarized.git"
  not_if { File.exist? "#{solarized_dir}" }
end

textmate_themes_directory = "\"#{WS_HOME}/Library/Application Support/TextMate/Themes\""

execute "Add Solarized Dark for TextMate" do
  command "cp \"#{solarized_dir}/Solarized\ (dark).tmTheme\" #{textmate_themes_directory}"
  user WS_USER
end

execute "Add Solarized Light for TextMate" do
  command "cp \"#{solarized_dir}/Solarized\ (light).tmTheme\" #{textmate_themes_directory}"
  user WS_USER
end