require 'sinatra'
require "bundler/setup"

set :public_folder, 'public'

get '/' do	
	redirect '/index.html'
end
