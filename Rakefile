require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'foodcritic'
require 'kitchen'

# Style tests. Rubocop and Foodcritic
namespace :style do
  desc 'Run Ruby style checks'
  RuboCop::RakeTask.new(:ruby)

  desc 'Run Chef style checks'
  FoodCritic::Rake::LintTask.new(:chef) do |t|
    t.options = {
      fail_tags: ['any']
    }
  end
end

# Rspec and ChefSpec
desc 'Run ChefSpec examples'
RSpec::Core::RakeTask.new(:spec)

# Integration tests for docker
namespace :integration do
  desc 'Run Test Kitchen with docker'
  task :docker do
    Kitchen.logger = Kitchen.default_file_logger
    Kitchen::Config.new.instances.each do |instance|
      instance.test(:always)
    end
  end
end

desc 'Run all style checks'
task style: ['style:chef', 'style:ruby']

desc 'Run all tests on Travis'
task travis: ['style', 'spec', 'integration:docker']

# Default
task default: ['style', 'spec']
