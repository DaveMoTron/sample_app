require 'spec_helper'

describe PagesController do
  render_views


before(:each) do
  @base_title = "Rails Sample App | "
end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
      it 'should have the right title' do
        get 'home'
        response.should have_selector("title",
                  :content => @base_title + "Home")
      end
    
  end

  describe "GET 'content'" do
    it "should be successful" do
      get 'content'
      response.should be_success
    end
    
     it 'should have the right title' do
        get 'content'
        response.should have_selector("title",
                  :content => @base_title + "Content")
      end
    
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  
     it 'should have the right title' do
        get 'about'
        response.should have_selector("title",
                  :content => @base_title + "About")
      end
  
  end
  
  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
  end
  
     it 'should have the right title' do
        get 'help'
        response.should have_selector("title",
                  :content => @base_title + "Help")
     end
  
end
  


end
