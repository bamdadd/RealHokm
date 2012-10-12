require 'rubygems'
require 'bundler/setup'
Bundler.require

configure do
  Compass.configuration do |config|
    config.project_path = File.join(File.dirname(__FILE__), 'app')
    config.sass_dir = 'css'
  end

  set :sass, Compass.sass_engine_options
end

require File.join(File.dirname(__FILE__), 'app', 'controllers', 'frontend.rb')

run Frontend

