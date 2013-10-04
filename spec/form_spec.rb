require 'spec_helper'

describe Form do
  
  def app
    @app ||= Form
  end
  
  describe "GET '/'" do
    it "should be successful" do
      get '/index.haml'
      page.should have_content('Welcome')

    end
  end

end
