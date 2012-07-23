pivotal_workstation_package "Quicksilver" do
  source "https://github.com/downloads/quicksilver/Quicksilver/Quicksilver%20#{node[:qs_version]}.dmg"
  action :install
end