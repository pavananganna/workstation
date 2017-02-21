
#Installs tree, ntp packages and creates a file in etc folder displaying message of the day
#

package 'tree' do
  action :install
end

package 'vim-enhanced' 

package 'ntp' do
  action :install
end

package 'git' do
  action :install
end

file '/etc/motd' do
content "****************
This server is the property of Vijay. Please dont delete this instance.
****************
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  MEMORY: #{node['memory']['total']}
  CPU: #{node['cpu']['0']['mhz']} 
"
  owner 'root'
  group 'root'
  action :create
end
