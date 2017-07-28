ENV["RACK_ENV"] = "test"

require File.join(File.dirname(__FILE__), '..', 'app/app.rb')

require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require './app/models/link'
require 'database_cleaner'
require_relative 'helpers/session'

RSpec.configure do |config|

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  config.include SessionHelpers
end

Capybara.app = BookmarkManager
