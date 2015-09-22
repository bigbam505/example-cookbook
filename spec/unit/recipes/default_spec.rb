require 'spec_helper'

describe 'example-cookbook::default' do
  cached(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'creates a verify directory' do
    expect(chef_run).to create_directory('/verify')
  end

  it 'creates a test file' do
    expect(chef_run).to create_file('/verify/testfile').with(content: 'Here is a static test file')
  end

  it 'creates a template file' do
    expect(chef_run).to create_template('/verify/template.conf').with(source: 'template.conf.erb')
  end

  it 'creates a new file' do
    expect(chef_run).to create_file('/verify/newfile').with(content: chef_run.node['example_cookbook']['new_file']['content'])
  end
end
