require 'rspec/core/rake_task'

task :default => :spec

desc 'Run server'
task :server do
  %x{rackup config.ru -p8282}
end

desc 'Run specs'
RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/**/*_spec.rb'
end

