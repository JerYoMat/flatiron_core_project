require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:fixture_user_one)
  end

  teardown do 
    Rails.cache.clear 
  end 
  
  test "login with valid email and password" do
    get login_path
    post login_path, params: { session: { email_or_username:    @user.email,
                                          password: 'password' } }
    assert_redirected_to @user
    follow_redirect!
    assert_template 'users/show'
  end

  test "login with valid username and password" do
    get login_path
    post login_path, params: { session: { email_or_username:    @user.username,
                                          password: 'password' } }
    assert_redirected_to @user
    follow_redirect!
    assert_template 'users/show'
  end
  
  
  test "login with invalid information" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: { session: { email_or_username: "", password: "" } }
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end
end
