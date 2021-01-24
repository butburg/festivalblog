source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.0"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 6.0.3", ">= 6.0.3.4"

# Use Puma as the app server
gem "puma", "~> 4.3"
# Use SCSS for stylesheets
gem "sass-rails", ">= 6"
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem "webpacker", "~> 4.0"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "turbolinks", "~> 5"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.7"
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'bootstrap-sass'

gem 'slim-rails'

gem 'bigdecimal', '1.3.5'


# for articles image upload
gem "carrierwave"
gem "file_validators"

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.2", require: false

# secure password validation
gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  # Use sqlite3 as the database for Active Record
  gem "sqlite3", "~> 1.4"
  # lat the minimagic gem work properly for img upload and scale
  gem 'rmagick', '~> 2.15', '>= 2.15.4'

end


group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.2"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  # Easy installation and use of web drivers to run system tests with browsers
  gem "webdrivers"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :test do
  gem "database_cleaner"
  gem "rails-controller-testing"
  gem "shoulda", "~> 3.5"
  gem "shoulda-matchers", "~> 2.0"
end

group :development do
  gem "license_finder", require: false
end

group :development do
  gem "pry-rails"
  gem "pry-byebug", platform: :ruby
end

group :development do
  gem "bullet"
end

group :development do
  gem "brakeman", require: false
end

group :development do
  gem "bundler-audit", require: false
end

group :development do
  gem "rubocop-rails_config"
end

group :development do
  gem "solargraph"
end

group :production do
  # Use postgreSQL for heroku
  gem "pg", "~> 1.2.3"
end
