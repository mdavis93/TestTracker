source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.2'

# #1
group :production do
  # Use pg as the production database for Active Record
  gem 'pg'
end

# #2
group :development do
  # Use sqlite3 as the development database for Active Record
  gem 'listen', '~> 3.0.5'
  gem 'sqlite3'
end

# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

gem 'thor', '0.20.0'

group :development, :test do
  gem 'byebug'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 3.0'
  gem 'shoulda'
  gem 'web-console'
end

gem 'autoprefixer-rails'
gem 'bootstrap-sass'  # Uses Bootstrap 3
gem 'devise'
gem 'figaro'
gem 'font-awesome-rails', '~> 4.7.0'
gem 'pundit'
