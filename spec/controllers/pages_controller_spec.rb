 require 'spec/spec_helper'

describe PagesController do
render_views
before :each do
@base_title ='Ruby on Rails: Welcome aboard'
end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
     
    it "should have the correct title" do
      get 'home'
      response.should have_selector('title', 
                                   :content => "#{@base_title} | Home")
    end
      it "should not be blank" do
      get 'home'
      response.body.should_not =~ /<body>\s*<\/body>/ 
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should have the correct title" do
      get 'contact'
      response.should have_selector('title', 
                                   :content => "#{@base_title} | Contact")
    end
  end
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "should have the correct title" do
      get 'about'
      response.should have_selector('title', 
                                   :content => "#{@base_title} | About")
    end

  end 
 describe "GET 'about'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
    it "should have the correct title" do
      get 'help'
      response.should have_selector('title', 
                                   :content => "#{@base_title} | Help")
    end

  end 
end
