source 'http://rubygems.org'
ruby '2.4.0'

gem 'sinatra','~> 2.0.2'
gem 'activerecord', '~> 4.2', '>= 4.2.6', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'pg'
gem 'activerecord-postgresql-adapter'
gem 'puma'
gem 'sqlite3', :group => :development
gem 'rake'
gem 'require_all'
gem 'thin'
gem 'shotgun', :group => :development
gem 'pry', :group => :development
gem 'bcrypt'
gem "tux", :group => :development
gem 'rack-flash3'

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
end
