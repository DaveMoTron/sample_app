require 'spec_helper'

describe "FriendlyForwardings" do
  
  it "should forward to the requested page after signin" do
    user = Factory(:user)
    visit edit_user_path(user)
    response.should have_selector("title", :content => "Sign in")
    # The test automatically follows the redirect to the signin page.
    fill_in :email,     :with => user.email
    fill_in :password,  :with => user.password
    # The test follows the redirect again, this time to users/edit.
    click_button
    response.should render_template("users/edit")
  end

end
