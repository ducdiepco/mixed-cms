source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Added at 2018-01-16 10:41:55 -0700 by ducdiep:
gem "pg", "~> 0.21.0"
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem "awesome_print"
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem "factory_bot"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.6"
  gem 'rspec-its'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem "shoulda-matchers"
  gem "database_cleaner"
  gem "webmock"
  gem "simplecov", require: false
  gem "timecop"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Added at 2018-01-13 17:31:45 -0700 by ducdiep:
gem "appengine", "~> 0.4.5"

gem 'bootstrap'
gem 'jquery-rails'
gem 'push_type', '~> 0.11.2'
gem 'dragonfly-s3_data_store'
gem 'dragonfly-google_data_store', :git => 'https://github.com/chemic/dragonfly-google_data_store.git'
gem "administrate"
gem 'font-awesome-sass', '~> 4.7.0'
gem 'flex-slider-rails'
gem 'material_components_web-sass'
gem 'canonical-rails', github: 'jumph4x/canonical-rails'
gem "cells-rails"
gem "cells-erb"
gem 'high_voltage'
gem 'meta-tags'
gem 'sitemap_generator'
gem "delayed_job_active_record"
gem 'dry-struct'
gem 'dry-validation'
gem 'dry-system-rails'
gem 'dry-transaction'
gem 'webpacker', git: 'https://github.com/rails/webpacker.git'
gem 'simple_form'
