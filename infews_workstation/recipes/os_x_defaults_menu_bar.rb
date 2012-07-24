#
# Menu Bar
# Adapted from: https://github.com/mathiasbynens/dotfiles/blob/master/.osx

pivotal_workstation_defaults "Menu bar: disable transparency" do
  domain 'NSGlobalDomain'
  key 'AppleEnableMenuBarTransparency'
  bool 'false'
end

pivotal_workstation_defaults "Menu bar: turn off battery time" do
  domain 'com.apple.menuextra.battery'
  key 'ShowPercent'
  string '"NO"'
end

pivotal_workstation_defaults "Menu bar: turn off battery percentage" do
  domain 'com.apple.menuextra.battery'
  key 'ShowTime'
  string '"NO"'
end

pivotal_workstation_defaults "Disable Resume system-wide" do
  domain 'NSGlobalDomain'
  key 'NSQuitAlwaysKeepsWindows'
  bool 'false'
end