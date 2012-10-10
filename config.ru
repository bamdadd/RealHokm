require 'rubygems'
require 'bundler/setup'
Bundler.require

configure do
  Compass.configuration do |config|
    config.project_path = File.join(File.dirname(__FILE__), 'lib')
  end

  set :sass, Compass.sass_engine_options
end

require File.join(File.dirname(__FILE__), 'lib', 'frontend.rb')

run Frontend

