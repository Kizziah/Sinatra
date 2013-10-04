require 'rubygems'
require 'bundler'
Bundler.require(:default)
require './forms'
require 'sass/plugin/rack'

use Sass::Plugin::Rack

use Rack::Coffee, root: 'views', urls: '/javascripts'

run Sinatra::Application
