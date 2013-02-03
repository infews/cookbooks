if node[:hostname] && node[:hostname] != ""
  execute "Setting ComputerName to #{node[:hostname]}" do
    command "scutil --set ComputerName #{node[:hostname]}"
  end

  execute "Setting LocalHostName to #{node[:hostname]}" do
    command "scutil --set LocalHostName #{node[:hostname]}"
  end

  execute "Setting HostName to #{node[:hostname]}" do
    command "scutil --set HostName #{node[:hostname]}"
  end

  execute "Setting hostname #{node[:hostname]}" do
    command "sudo hostname #{node[:hostname]}"
  end

  execute "Setting root filesystem device to #{node[:hostname]}" do
    command "diskutil rename / #{node[:hostname]}"
  end
end