#
# Cookbook Name:: df_camel
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

# this will create the directory for the machine.
directory "usr/local/camel" do 
	mode "0777"
end

# then it will have to unzip it because RPM's don't exist yet and I haven't figured out ark yet.
execute "unzip_file" do 
	cwd "/vagrant/binaries" 
	command "tar -xzvf apache-camel-2.12.3.tar.gz -C /usr/local/camel" 
	action :run
end

# then we will have to point to the include_recipe path for the machine.
include_recipe "df_camel::set_camel_home"
