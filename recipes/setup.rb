<<<<<<< HEAD
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
content '****************
This server is the property of Vijay. Please dont delete this instance.
******************'
  owner 'root'
  group 'root'
=======
package 'yum'
package 'git'
package 'vi'
package 'tree'

file '/etc/motd' do
content 'Hello chef'
owner 'root'
group 'root'
mode '0644'
>>>>>>> bf32f68c34747d90c7a65701f63bc51e0b1120ac
end

