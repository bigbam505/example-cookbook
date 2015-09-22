#
## Cookbook:: example-cookbook
## Recipe:: _create_template
#

template '/verify/template.conf' do
  source 'template.conf.erb'
  mode '0755'
  owner 'root'
  group 'root'
end
