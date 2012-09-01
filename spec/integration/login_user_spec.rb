# encoding:utf-8
require 'spec_helper'

describe "login process" do
  let(:user) { create(:user, :email => 'some@mail.it', :password => '123456', :password_confirmation => '123456') }

  it "signs me in" do
    visit('/users/sign_in')
    within "#new_user" do
      fill_in 'Email', :with => user.email
      fill_in 'Password', :with => "123456"
      click_on 'Sign in'
    end
    sleep 2
    # save_and_open_page
    page.should have_content("Signed in successfully.")
  end
end