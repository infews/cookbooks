pivotal_workstation_package "Quicksilver" do
  app "Quicksilver"
  source "http://cloud.github.com/downloads/quicksilver/Quicksilver/Quicksilver%20#{node[:qs_version]}.dmg"
  dmg_name "Quicksilver\ #{node[:qs_version]}"
  action :install
end