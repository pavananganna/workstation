
# Installs tree, ntp packages and creates a file in etc folder displaying message of the day
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

template '/etc/motd' do
  source 'motd.erb'
  action :create
end
