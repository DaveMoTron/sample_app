module ApplicationHelper
  #Return a correctly formatted title if no @title variable set
  def title
    base_title="Rails Sample App"
      if @title.nil?
        base_title
      else
        "#{base_title} | #{@title}"
      end
  end
  
end
