directory "#{WS_HOME}/bin" do
  owner WS_USER
end

pivotal_workstation_bash_profile_include "home_bin_in_path"
