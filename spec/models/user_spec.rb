require 'spec_helper'

describe User do
  it "should create a new instance given a valid attribute" do
      User.create!(:name=>"focon", :email=>'f@o.nl')
end

before(:each) do
@attr= {:name=>"focon",:email=>"f@o.nl"}
end

it "should require a name" do
      no_name_user = User.new(@attr.merge(:name=>""))
      no_name_user.should_not be_valid
end
it "should require an email address" do
      no_email_user = User.new(@attr.merge(:email=>""))
      no_email_user.should_not be_valid
end
it "should reject long names" do
      long_name = "a" * 51
      long_name_user = User.new(@attr.merge(:name=>long_name))
      long_name_user.should_not be_valid
end
it "should require a valid email address" do
     addresses= %w[focon@example.com bocon@example.com jocon@example.com]
      addresses.each do |address|
      valid_email_user = User.new(@attr.merge(:email=> address))
      valid_email_user.should be_valid
      end
end
it "should reject an invalid email address" do
     addresses=%w[@example.com boconexample.com jocon@example.]
      addresses.each do |address|
      invalid_email_user = User.new(@attr.merge(:email=> address))
      invalid_email_user.should_not be_valid
      end
end
it "should reject duplicate email addresses" do
      User.create!(@attr)
      user_with_duplicate_email = User.new(@attr)
      user_with_duplicate_email.should_not be_valid
end
it "should reject  email addresses identical up to case" do
      upcased_email = @attr[:email].upcase
      User.create!(@attr.merge(:email=> upcased_email))
      user_with_duplicate_email= User.new(@attr)
      user_with_duplicate_email.should_not be_valid
end
end
