# this sets the path home for apache camel

directory "/etc/profile.d" do 
	mode "0755"
end

file "/etc/profile.d/camel.sh" do 
user "root"
group "root"
mode "0755"
content "export CAMEL_HOME=/usr/local/camel/apache-camel-2.12.3"
action :create
end
