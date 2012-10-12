require 'rubygems'
require 'bundler/setup'
Bundler.require(:default, :test)
require File.join(File.dirname(__FILE__), '..', 'app', 'controllers', 'frontend.rb')

set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false
set :show_exceptions, false

def app
  Frontend
end

RSpec.configure do |config|
  config.before(:all) do
    @stats = Statsd.new('metrics', 8125)
    @spec_start = Time.now
  end
  
  Capybara.app = Frontend
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
  end
  #Capybara.default_driver = :selenium
  config.include Rack::Test::Methods
  config.include Capybara, :type => :integration
  config.include Capybara::DSL

  config.after(:all) do
    @stats.increment('cobra.build.count')
    @stats.timing('cobra.build.spec.duration_ms', ((Time.now - @spec_start) * 1000).round)
  end
end

