installers_dir = "/Users/#{WS_USER}/installers"

shift_it_zip = "ShiftIt-1.5.zip"

execute "Download ShiftIt" do
  command "curl -L https://github.com/downloads/fikovnik/ShiftIt/#{shift_it_zip} -o #{installers_dir}/#{shift_it_zip}"
end

execute "Unzip ShiftIt" do
  command "cd #{installers_dir} && unzip -f #{shift_it_zip}"
end

execute "Copy ShiftIt to Applications" do
  command "cp -r #{installers_dir}/ShiftIt* /Applications"
end