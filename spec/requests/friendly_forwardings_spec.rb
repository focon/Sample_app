require 'spec_helper'

describe "FriendlyForwardings" do
    it "forward to the requested page after sign in" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
user=Factory(:user)
visit edit_user_path(user)
fill_in :email, :with=>user.email
fill_in :password, :with=>user.password
click_button
response.should render_template('users/edit')
visit signout_path
visit signin_path
fill_in :email, :with=>user.email
fill_in :password, :with=>user.password
click_button
response.should render_template('users/show')

      end
end
