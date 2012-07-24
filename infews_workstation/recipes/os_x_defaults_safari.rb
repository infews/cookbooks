################################################################################
## Safari & WebKit                                                             #
################################################################################

pivotal_workstation_defaults "Enable Safari’s debug menu" do
  domain 'com.apple.Safari'
  key 'IncludeInternalDebugMenu'
  boolean 'true'
end

pivotal_workstation_defaults "Add a context menu item for showing the Web Inspector in web views" do
  domain 'NSGlobalDomain'
  key 'WebKitDeveloperExtras'
  boolean 'true'
end
