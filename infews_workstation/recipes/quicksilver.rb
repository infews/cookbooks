
# This *should* work, but there's some chef or package provider bug w/ spaces in URLs and/or DMG names
#
#pivotal_workstation_package "Quicksilver" do
#  app "Quicksilver"
#  source "https://github.com/downloads/quicksilver/Quicksilver/Quicksilver%20#{node[:qs_version]}.dmg'
#  dmg_name "Quicksilver\ #{node[:qs_version]}"
#  action :install
#end

# So instead we download the DMG in the shell and then give the package provider what it wants
execute "Download Quicksilver" do
  command "curl -L https://github.com/downloads/quicksilver/Quicksilver/Quicksilver%20#{node[:qs_version]}.dmg -o /var/chef/cache/quicksilver.dmg"
end

pivotal_workstation_package "Quicksilver install" do
  app "Quicksilver"
  dmg_name "quicksilver"
  action :install
end


