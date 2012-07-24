################################################################################
## Address Book, Dashboard, iCal, iTunes, Mail, and Disk Utility               #
################################################################################

pivotal_workstation_defaults "Enable the debug menu in Disk Utility" do
  domain 'com.apple.DiskUtility'
  key 'DUDebugMenuEnabled'
  boolean 'true'
end