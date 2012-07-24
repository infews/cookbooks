#
# Trackpad, mouse, keyboard, Bluetooth accessories, and input
# Adapted from: https://github.com/mathiasbynens/dotfiles/blob/master/.osx

pivotal_workstation_defaults "Trackpad: enable tap to click for this user and for the login screen (part 1)" do
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  key 'Clicking'
  boolean true
end

pivotal_workstation_defaults "Trackpad: enable tap to click for this user and for the login screen (part 2)" do
  domain 'NSGlobalDomain'
  key 'com.apple.mouse.tapBehavior'
  integer 1 
end

pivotal_workstation_defaults "Trackpad: enable tap to click for this user and for the login screen (part 3)" do
  domain 'NSGlobalDomain'
  key 'com.apple.mouse.tapBehavior'
  integer 1
end

pivotal_workstation_defaults "Trackpad: map bottom right corner to right-click (part 1)" do
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  key 'TrackpadCornerSecondaryClick'
  integer 2
end

pivotal_workstation_defaults "Trackpad: map bottom right corner to right-click (part 2)" do
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  key 'TrackpadRightClick'
  boolean true
end

pivotal_workstation_defaults "Trackpad: map bottom right corner to right-click (part 3)" do
  domain 'NSGlobalDomain'
  key 'com.apple.trackpad.trackpadCornerClickBehavior'
  integer 1 
end

pivotal_workstation_defaults "Trackpad: map bottom right corner to right-click (part 4)" do
  domain 'NSGlobalDomain'
  key 'com.apple.trackpad.enableSecondaryClick'
  boolean true 
end

pivotal_workstation_defaults "Trackpad: swipe between pages with three fingers (part 1)" do
  domain 'NSGlobalDomain'
  key 'AppleEnableSwipeNavigateWithScrolls'
  boolean true
end

pivotal_workstation_defaults "Trackpad: swipe between pages with three fingers (part 2)" do
  domain 'NSGlobalDomain'
  key 'com.apple.trackpad.threeFingerHorizSwipeGesture'
  integer 1
end

pivotal_workstation_defaults "Trackpad: swipe between pages with three fingers (part 3)" do
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  key 'TrackpadThreeFingerHorizSwipeGesture'
  integer 1
end

pivotal_workstation_defaults "Enable full keyboard access for all controls" do
  domain 'NSGlobalDomain'
  key 'AppleKeyboardUIMode'
  integer 3
end