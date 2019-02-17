require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_user = User.new(username: "model test user", email: "model@test.com", password: "password", password_confirmation: "password", school_relationship: "student")
    @user = users(:fixture_user_one)
    @user.password = 'password'
    @user.password_confirmation = 'password'
  end

  teardown do 
    Rails.cache.clear
  end 

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { email: @new_user.email, password: @new_user.password, school_relationship: @new_user.school_relationship, username: @new_user.username } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { email: @user.email, password: 'password', password_confirmation: 'password', school_relationship: @user.school_relationship, username: @user.username } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
