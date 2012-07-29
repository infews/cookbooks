installers_dir = "/Users/#{WS_USER}/cookbooks/installers"

shift_it_zip = "ShiftIt-1.5.zip"

execute "Download ShiftIt" do
  command "curl -L https://github.com/downloads/fikovnik/ShiftIt/#{shift_it_zip} -o #{installers_dir}/#{shift_it_zip}"
end

execute "Unzip ShiftIt" do
  command "cd #{installers_dir} && unzip -o #{shift_it_zip}"
end

execute "Copy ShiftIt to Applications" do
  command "cp -R #{installers_dir}/ShiftIt.app /Applications"
end
