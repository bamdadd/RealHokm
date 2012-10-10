require 'rubygems'
require 'bundler/setup'
Bundler.require(:default, :test)
require File.join(File.dirname(__FILE__), '..', 'lib', 'frontend.rb')

set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false
set :show_exceptions, false

def app
  Frontend
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
end

