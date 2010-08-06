class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def content
    @title = "Content"
  end

  def about
    @title = "About"
  end
  
  def help
    @title = "Help"
  end
  
end
