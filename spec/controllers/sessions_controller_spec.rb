require 'spec_helper'

describe SessionsController do
render_views
  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

    it "should have the correct title" do
      get :new
      response.should have_selector('title', 
                                   :content => "Sign in")
    end

end