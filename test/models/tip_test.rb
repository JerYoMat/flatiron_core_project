require 'test_helper'

class TipTest < ActiveSupport::TestCase
  setup do 
    @user = users(:fixture_user_one)
    @tip = @user.tips.build(title: "Rails Project help", link:"www.railstutorial.org/book", resource_type: "Project Prep", time_requirement: ">2 hours")
  end 

  test "should be valid" do
    assert @tip.valid?
  end

  test "user id should be present" do
    @tip.user_id = nil
    assert_not @tip.valid?
  end

  test "title should be present" do
    @tip.title = "   "
    assert_not @tip.valid?
  end

  test "link should be present" do
    @tip.link = "   "
    assert_not @tip.valid?
  end

  test "resource type should be present" do
    @tip.resource_type = "   "
    assert_not @tip.valid?
  end

  test "time requirement should be present" do
    @tip.time_requirement = "   "
    assert_not @tip.valid?
  end

  test "title should be at most 255 characters" do
    @tip.title = "a" * 256
    assert_not @tip.valid?
  end

  test "link should be at most 255 characters" do
    @tip.link = "a" * 256
    assert_not @tip.valid?
  end

end
