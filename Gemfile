source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'

# Default - Just removed turbolinks and moved sqlite3 to dev and test only - heroku cannot use sqlite3
gem 'rails', '~> 5.2.2'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
# -----------------------------

# Added gems
gem 'bcrypt', '~> 3.1.7'
gem 'jquery-rails'
gem 'popper_js'
gem 'bootstrap' #don't user bootstrap-sass- does not support bootstrap4
gem 'bootstrap-social-rails'
gem 'font-awesome-rails'
gem 'active_model_serializers'
gem 'omniauth-facebook'
gem 'omniauth-github'
gem 'dotenv-rails'



group :development, :test do
  gem 'pry' # You really want this to debug
  gem 'sqlite3', '1.3.13' #Moved and specified version
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do #No changes 
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  #Added - Flatiron uses rspec - I found minitest easier to pick up
  gem 'rails-controller-testing', '1.0.2'
  gem 'minitest',                 '5.10.3'
  gem 'minitest-reporters',       '1.1.14'
 
  #---------------------------------------------
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

group :production do #added for heroku - run "bundle install --without production" to not install this.  
  gem 'pg', '0.20.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
