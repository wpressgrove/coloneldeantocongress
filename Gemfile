source 'https://rubygems.org'
ruby "2.2.2"

# Main Components
gem 'paper_trail'
gem 'pg'
gem 'rails', '4.2.2'

# Authentication
gem 'cancancan', '1.13.1'
gem 'devise', '3.5.2'
gem 'rolify'

# Front-end
gem 'compass'
gem 'font-awesome-rails'
gem 'foundation-rails', '~> 5.5.1'
gem 'haml'
gem 'haml-rails'
gem 'html2haml'
gem 'jbuilder'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'money'
gem 'sass-rails', '~> 5.0'
gem 'tinymce-rails'
gem 'uglifier', '2.7.2'
gem 'will_paginate', '~> 3.0.6'
gem 'valid_email'

# Monitoring
gem 'google-analytics-rails'
gem 'skylight'

#Image Manipulation
gem 'aws-sdk', '2.1.29'
gem 'mini_magick'
gem 'fastimage'
gem 'fog', '1.34.0'
gem 'paperclip', '4.3.1'
gem 'paperclip-av-transcoder'

#Payment Gateway
gem 'stripe'

group :production do
  gem 'rails_12factor'
end

group :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'parallel_tests'
  gem 'fabrication'
  gem 'shoulda'
  gem 'simplecov', '~> 0.7.1', require: false
  gem 'database_cleaner', :require => false
  gem 'vcr', '~> 2.4.0'
  gem 'webmock', '~> 1.11.0', :require => false
  gem 'awesome_print'
  gem 'email_spec'
  gem 'resque_spec'
  gem 'guard-rspec', require: false
  gem 'mocha'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'letter_opener'
  gem 'quiet_assets'
end

group :development, :production do
  gem 'figaro'
end
