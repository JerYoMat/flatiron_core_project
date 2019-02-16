require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get code_of_conduct" do
    get static_pages_code_of_conduct_url
    assert_response :success
  end

  test "should get credits" do
    get static_pages_credits_url
    assert_response :success
  end

end
