pivotal_workstation_package "Google Drive" do
  source "https://dl-ssl.google.com/drive/installgoogledrive.dmg"
  volumes_dir "Install Google Drive"
  action :install
end