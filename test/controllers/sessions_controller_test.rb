require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  setup do 
    @user = users(:fixture_user_one)
  end 
  
  test "should get new" do
    get login_path
    assert_response :success
  end

  test "login with valid information followed by logout" do
    get login_path
    post login_path, params: { session: { email_or_username:    @user.email,
                                          password: 'password' } }
    assert is_logged_in?
    assert_redirected_to @user
    follow_redirect!
    assert_template 'users/show'

    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to root_url
    
  end

end
