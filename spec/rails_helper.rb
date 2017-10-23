require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'
require 'capybara/rspec'
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end

# brew install geckodriver
# brew services start geckodriver
# Capybara.default_driver = :selenium

# brew install chromedriver
# brew services start chromedriver
# Capybara.default_driver = :selenium_chrome
Capybara.default_driver = :selenium_chrome_headless