source 'https://rubygems.org'
ruby "2.2.2"

# Main Components
gem 'paper_trail', '4.0.0'
gem 'pg', '0.18.3'
gem 'rails', '4.2.4'

# Authentication
gem 'cancancan', '1.13.1'
gem 'devise', '3.5.2'
gem 'rolify', '4.1.1'

# Front-end
gem 'compass'
gem 'font-awesome-rails', '4.4.0.0'
gem 'foundation-rails', '5.5.3.2'
gem 'haml', '4.0.7'
gem 'haml-rails'
gem 'html2haml'
gem 'jbuilder', '2.3.2'
gem 'jquery-rails', '4.0.5'
gem 'jquery-ui-rails'
gem 'money', '6.6.1'
gem 'sass-rails', '5.0.4'
gem 'tinymce-rails', '4.2.6'
gem 'uglifier', '2.7.2'
gem 'will_paginate', '~> 3.0.6'
gem 'valid_email'

# Monitoring
gem 'google-analytics-rails'
gem 'skylight', '0.8.1'

#Image Manipulation
gem 'aws-sdk', '2.1.30'
gem 'mini_magick', '4.3.6'
gem 'fastimage'
gem 'fog', '1.34.0'
gem 'paperclip', '4.3.1'
gem 'paperclip-av-transcoder'

#Payment Gateway
gem 'stripe', '1.30.2'

group :production do
  gem 'rails_12factor'
end

group :test do
  gem 'database_cleaner', '1.5.1', :require => false
  gem 'rspec'
  gem 'rspec-rails', '3.3.3'
  gem 'fabrication', '2.14.1'
  gem 'shoulda'
  gem 'simplecov', '0.10.0', require: false
  gem 'vcr', '2.9.3'
  gem 'webmock', '1.22.1', :require => false
  gem 'awesome_print'
  gem 'email_spec'
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
