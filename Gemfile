source 'https://rubygems.org'
ruby '2.4.5'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'haml-rails'
gem 'erb2haml'
gem 'devise'
gem 'cancancan'
gem 'rails_admin'
gem 'jquery-rails'
gem 'momentjs-rails'
gem 'bootstrap3-datetimepicker-rails'
gem 'font-awesome-rails'
gem 'kaminari'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'hirb'
  gem 'hirb-unicode'
  gem "letter_opener", "~> 1.1.0"
  gem 'rspec'
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rails-controller-testing'
  gem 'capybara'
  # Vscode
  gem 'ruby-debug-ide'
  gem 'debase'
  gem 'rcodetools'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
