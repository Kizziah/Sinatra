require 'rack/test' # it is needed to run rspec
require 'capybara' # loading capybara
require 'capybara/rspec'
require 'capybara/dsl'
require 'selenium-webdriver'
require "simplecov"
SimpleCov.start

ENV['RACK_ENV'] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end

include Capybara::DSL # It contain all the methods you use for writing test. If you do not use it , 

Capybara.default_driver = :selenium # it will tell capybara to use selenium. It should be noted that  

def app 
  Sinatra::Application 
end 
include Rack::Test::Methods # It contain different method like get,  last_response etc which

def app
  Sinatra::Application # It is must and tell rspec that test it running is for sinatra
end


RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
end
