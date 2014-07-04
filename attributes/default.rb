# install path
default["gitprep"]["home"] = "/var/lib/gitprep"

# execute group/user
default["gitprep"]["group"] = "gitprep"
default["gitprep"]["user"] = "gitprep"

# git repository
default["gitprep"]["git"]["repository"] = "https://github.com/yuki-kimoto/gitprep"
default["gitprep"]["git"]["revision"] = "master"

# config file
default["gitprep"]["conf"]["file"] = "gitprep.conf"
default["gitprep"]["conf"]["template"] = "gitprep.conf.erb"
