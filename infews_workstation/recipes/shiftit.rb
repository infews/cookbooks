
shift_it_zip = "ShiftIt-1.5.zip"

execute "Download ShiftIt" do
  command "curl -L https://github.com/downloads/fikovnik/ShiftIt/#{shift_it_zip} -o #{Chef::Config[:file_cache_path]}/#{shift_it_zip}"
  user WS_USER
end

execute "Unzip ShiftIt" do
  command "cd #{Chef::Config[:file_cache_path]} && unzip -o #{shift_it_zip}"
  user WS_USER
end

execute "Copy ShiftIt to Applications" do
  command "cp -R #{Chef::Config[:file_cache_path]}/ShiftIt.app /Applications"
  user WS_USER
end
