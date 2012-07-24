# Screen                                                                      #
# Adapted from: https://github.com/mathiasbynens/dotfiles/blob/master/.osx

pivotal_workstation_defaults "Save screenshots to the desktop" do
  domain 'com.apple.screencapture'
  key 'location'
  string '"$HOME/Desktop"'
end

pivotal_workstation_defaults "Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)" do
  domain 'com.apple.screencapture'
  key 'type'
  string '"png"'
end
