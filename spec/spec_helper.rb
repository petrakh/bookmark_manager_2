require File.join(File.dirname(__FILE__), '..', 'app/app.rb')

require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require './app/models/link'

Capybara.app = BookmarkManager
