# Marked Bonus Pack installation
#
# Dependencies
# * Marked - if you haven't bought this app yet and author Markdown, you should: http://itunes.apple.com/us/app/marked/id448925439?mt=12
#
# Copyright 2012 Infews LLC
# Licensed via the MIT license

installers_dir = "~/installers"

execute "Download the Marked Bonus Pack" do
  command "curl -L http://brettterpstra.com/downloads/MarkedBonusPack1.5.zip -o #{installers_dir}/MarkedBonusPack1.5.zip"
end

execute "Unzip the Marked Bonus Pack" do
  command "cd #{installers_dir} && unzip -f MarkedBonusPack1.5.zip"
end

directory "/Users/#{node[:username]}/Library/Services" do
  owner node[:username]
end

execute "Install the Marked Services" do
  command "cp -r #{installers_dir}/MarkedBonusPack1.5/Services/* ~/Library/Services"
end

execute "Install the Textmate bundle if Textmate is installed" do
  command "open #{installers_dir}/MarkedBonusPack1.5/Textmate/Marked.tmbundle"
  not_if { `ls /Applications | grep TextMate`.length == 0}
end