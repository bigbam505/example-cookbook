#
## Cookbook:: example-cookbook
## Recipe:: _create_new_file
#

file '/verify/newfile' do
  content node['example_cookbook']['new_file']['content']
  mode '0755'
  owner 'root'
  group 'root'
end
