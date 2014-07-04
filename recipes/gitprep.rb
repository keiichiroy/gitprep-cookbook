# create group
group node["gitprep"]["group"] do
  action :create
end

# create user
user node["gitprep"]["user"] do
  gid node["gitprep"]["group"]
  password "$1$PX82HctQ$QlTEVFWH0fJkieBRv8oNF0" # gitprep
  action :create
end

# download archive
git node["gitprep"]["home"] do
  repository node["gitprep"]["git"]["repository"]
  revision node["gitprep"]["git"]["revision"]
end

# template gitprep.conf
template node["gitprep"]["home"] + "/" + node["gitprep"]["conf"]["file"] do
  source node["gitprep"]["conf"]["template"]
end

# execute install script
execute "chown gitprep:gitprep -R ." do
  cwd node["gitprep"]["home"]
  not_if { ::File.exists?("/var/lib/gitprep/extlib/lib/perl5/Module/CoreList.pm")}
end

# execute install script
execute "./setup.sh" do
  cwd node["gitprep"]["home"]
  not_if { ::File.exists?("/var/lib/gitprep/extlib/lib/perl5/Module/CoreList.pm")}
  user node["gitprep"]["user"]
  group node["gitprep"]["group"]
end

# execute gitprep
execute "./gitprep" do
  cwd node["gitprep"]["home"]
  only_if { ::File.exists?("/var/lib/gitprep/gitprep")}
end

