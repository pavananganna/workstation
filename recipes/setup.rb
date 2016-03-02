package 'yum'
package 'git'
package 'vi'
package 'tree'

file '/etc/motd' do
content 'Hello chef'
owner 'root'
group 'root'
mode '0644'
end

