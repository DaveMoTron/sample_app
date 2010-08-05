require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
      it 'should have the right title' do
        get 'home'
        response.should have_selector("title",
                  :content => "Sample App | Home")
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
                  :content => "Sample App | Content")
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
                  :content => "Sample App | About")
      end
  
  end
  

  




end
