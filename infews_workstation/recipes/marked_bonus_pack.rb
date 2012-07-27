# Marked Bonus Pack installation
#
# Dependencies
# * Marked - if you haven't bought this app yet and author Markdown, you should: http://itunes.apple.com/us/app/marked/id448925439?mt=12

installers_dir = "/Users/#{WS_USER}/installers"

execute "Download the Marked Bonus Pack" do
  command "curl -L http://brettterpstra.com/downloads/MarkedBonusPack1.5.zip -o #{installers_dir}/MarkedBonusPack1.5.zip"
end

execute "Unzip the Marked Bonus Pack" do
  command "cd #{installers_dir} && unzip -f MarkedBonusPack1.5.zip"
end

directory "/Users/#{WS_USER}/Library/Services" do
  owner WS_USER
end

execute "Install the Marked Services" do
  command "cp -r #{installers_dir}/MarkedBonusPack1.5/Services/* ~/Library/Services"
end

execute "Install the Textmate bundle if Textmate is installed" do
  command "open #{installers_dir}/MarkedBonusPack1.5/Textmate/Marked.tmbundle"
  not_if { `ls /Applications | grep TextMate`.length == 0}
end