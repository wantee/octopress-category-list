require "bundler/gem_tasks"
require_relative 'lib/octopress-category-list/config.rb'

config_yml = 'assets/config.yml'

file config_yml => 'lib/octopress-category-list/config.rb' do
  File.open(config_yml, 'w') { |f|
    f.write(OctopressCategoryList::Config.default_config) 
  }
end

task :build => config_yml

