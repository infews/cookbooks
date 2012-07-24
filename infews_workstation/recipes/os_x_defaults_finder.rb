################################################################################
## Finder                                                                      #
################################################################################

pivotal_workstation_defaults "Finder: show hidden files by default" do
  domain 'com.apple.Finder'
  key 'AppleShowAllFiles'
  boolean 'true'
end

pivotal_workstation_defaults "Finder: show all filename extensions" do
  domain 'NSGlobalDomain'
  key 'AppleShowAllExtensions'
  boolean 'true'
end

pivotal_workstation_defaults "Finder: show status bar" do
  domain 'com.apple.finder'
  key 'ShowStatusBar'
  boolean 'true'
end

pivotal_workstation_defaults "Finder: allow text selection in Quick Look" do
  domain 'com.apple.finder'
  key 'QLEnableTextSelection'
  boolean 'true'
end

pivotal_workstation_defaults "Display full POSIX path as Finder window title" do
  domain 'com.apple.finder'
  key '_FXShowPosixPathInTitle'
  boolean 'true'
end

pivotal_workstation_defaults "Disable the warning when changing a file extension" do
  domain 'com.apple.finder'
  key 'FXEnableExtensionChangeWarning'
  boolean 'false'
end

pivotal_workstation_defaults "Avoid creating .DS_Store files on network volumes" do
  domain 'com.apple.desktopservices'
  key 'DSDontWriteNetworkStores'
  boolean 'true'
end

pivotal_workstation_defaults "Empty Trash securely by default" do
  domain 'com.apple.finder'
  key 'EmptyTrashSecurely'
  boolean 'true'
end

pivotal_workstation_defaults "Enable AirDrop over Ethernet and on unsupported Macs running Lion" do
  domain 'com.apple.NetworkBrowser'
  key 'BrowseAllInterfaces'
  boolean 'true'
end

## Show the ~/Library folder
#chflags nohidden ~/Library
