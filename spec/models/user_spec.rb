require 'spec_helper'

describe User do
  it "should create a valid user" do
    build(:user).should be_valid
  end

  it "should encrypt the password" do
    user = create(:user, :password => '123456', :password_confirmation => '123456')
    user = User.find(user.id)
    user.password.should_not == '123456'
  end
end