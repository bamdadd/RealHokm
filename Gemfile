source :rubygems
ruby '1.9.3'

gem 'sinatra', '1.3.3', :require => 'sinatra'
gem 'json', '1.7.5', :require => 'json'
gem 'compass', '0.12.2', :require => 'compass' # sass and compass should likely go under a dev group
gem 'sass', '3.2.1', :require => 'sass'
gem 'slim', '1.3.2', :require => 'slim'

group :production do
  gem 'puma', '1.6.3'
end

group :assets do
  gem 'susy', '1.0.1'
end

group :development do
  gem 'heroku'
end

group :test,:development do
  gem 'autotest', '4.4.6'
  gem 'rspec', '2.11.0'
  gem 'rack-test', '0.6.2', :require => 'rack/test'
  gem 'capybara', '1.1.2', :require => ['capybara', 'capybara/dsl']
  gem 'statsd-ruby', :require => 'statsd'
end
