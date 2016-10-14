require 'simplecov'
SimpleCov.start
# Sinatra
require File.join(File.dirname(__FILE__), *%w[.. .. app])
# Force the application name because polyglot breaks the auto-detection logic.
Sinatra::Application.app_file = File.join(File.dirname(__FILE__), *%w[.. .. app.rb])

require 'rspec/expectations'
require 'capybara/cucumber'


class MyWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

   
Capybara.app = Sinatra::Application

World{MyWorld.new}

