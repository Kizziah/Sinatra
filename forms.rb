require 'sinatra'
require "bundler/setup"
require 'coffee-script'
require 'haml'
require 'sass'
require 'bourbon'

set :haml, format: :html5
set :views, File.dirname(__FILE__)
configure do
  set :sass, {:style => :expanded}
end

get '*' do
  haml :index
end