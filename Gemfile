source "https://rubygems.org"

gem 'coderay'
gem 'json'
gem 'sinatra'

group :development do
  gem 'guard-livereload'
  gem 'guard-rack'
  gem 'rack-livereload'
end

group :test, :development do
  gem 'guard-rspec'  
  gem 'rack-test'
  gem 'rspec'
end

group :production do
  gem 'puma'
end
