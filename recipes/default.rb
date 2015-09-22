#
## Cookbook:: example-cookbook
## Recipe:: default
#

directory '/verify' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

file '/verify/testfile' do
  content 'Here is a static test file'
  mode '0755'
  owner 'root'
  group 'root'
end

include_recipe 'example-cookbook::_create_new_file'
include_recipe 'example-cookbook::_create_template'
