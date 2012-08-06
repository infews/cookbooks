solarized_dir = "#{Chef::Config[:file_cache_path]}/textmate-solarized"

# This is the best Solarized implementation for Textmate
execute "Clone Textmate/Solarized" do
  command "cd #{Chef::Config[:file_cache_path]} && git clone https://github.com/deplorableword/textmate-solarized.git"
  not_if { File.exist? "#{solarized_dir}" }
end

textmate_themes_directory = %Q{#{WS_HOME}/Library/Application\ Support/TextMate/Themes/}

directory textmate_themes_directory do
  user WS_USER
  action :create
end

execute "Add Solarized themes to TextMate" do
  command %Q{cp #{solarized_dir}/*.tmTheme "#{textmate_themes_directory}"}
  user WS_USER
end
