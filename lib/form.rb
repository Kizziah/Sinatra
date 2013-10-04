class Form < Sinatra::Base

    #configure do
      # set app specific settings
      # for example different view folders
    #end
	set :haml, format: :html5
	set :views, File.dirname(__FILE__)
	configure do
	  set :sass, {:style => :expanded}
	end

	get '*' do
	  haml :index
	end



    # get '/' do
    #   "Hello from bar"
    # end

  end
