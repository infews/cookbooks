################################################################################
## Dock & hot corners                                                          #
################################################################################

pivotal_workstation_defaults "Show indicator lights for open applications in the Dock" do
  domain 'com.apple.dock'
  key 'show-process-indicators'
  boolean 'true'
end

pivotal_workstation_defaults "Enable the 2D Dock" do
  domain 'com.apple.dock'
  key 'no-glass'
  boolean 'true'
end

pivotal_workstation_defaults "Position the Dock on the left" do
  domain 'com.apple.dock'
  key 'orientation'
  string 'left'
end

pivotal_workstation_defaults "Automatically hide and show the Dock" do
  domain 'com.apple.dock'
  key 'autohide'
  boolean 'true'
end

pivotal_workstation_defaults "Make Dock icons of hidden applications translucent" do
  domain 'com.apple.dock'
  key 'showhidden'
  boolean 'true'
end

pivotal_workstation_defaults "Enable iTunes track notifications in the Dock" do
  domain 'com.apple.dock'
  key 'itunes-notifications'
  boolean 'true'
end

## Reset Launchpad
execute 'find ~/Library/ Application \ Support/Dock -name "*.db" -maxdepth 1 -delete'
