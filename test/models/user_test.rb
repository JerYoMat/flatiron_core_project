require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do 
   @new_user = User.new(username: "model test user", email: "model@test.com", password: "password", password_confirmation: "password", school_relationship: "student")
  end 

#Check that the users that should work are valid
  test 'should be valid' do 
    assert @new_user.valid?
  end 

#Check for presence of required items
  test "name should be present" do
    @new_user.username = "     "
    assert_not @new_user.valid?
  end

  test "email should be present" do
    @new_user.email = "     "
    assert_not @new_user.valid?
  end

  test "school relationship should be present" do
    @new_user.school_relationship = "     "
    assert_not @new_user.valid?
  end

  test "password should be present" do
    @new_user.password = "     "
    assert_not @new_user.valid?
  end

#Check for length on string attributes
  test "name should not be too long" do
    @new_user.username = "a" * 256
    assert_not @new_user.valid?
  end

  test "email should not be too long" do
    @new_user.email = "a" * 244 + "@example.com"
    assert_not @new_user.valid?
  end

#Format Checks
  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @new_user.email = valid_address
      assert @new_user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @new_user.email = invalid_address
      assert_not @new_user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end
#Check for Inclusion on Limited Option Items
test "valid school_relationship answers are accepted" do
  valid = %w[student graduate not_affiliated]
  valid.each do |valid_status|
    @new_user.school_relationship = valid_status
    assert @new_user.valid?, "#{valid_status.inspect} should be valid"
  end
end

test "invalid school_relationship answers are rejected" do
  invalid = %w[user@example,com user_at_foo example.
                         @foo@bar+baz]
  invalid.each do |invalid_status|
    @new_user.email = invalid_status
    assert_not @new_user.valid?, "#{invalid_status.inspect} should be invalid"
  end
end

#Uniqueness 
test "username should be unique" do
  duplicate_user = @new_user.dup
  duplicate_user.username = @new_user.username.upcase
  duplicate_user.email = "something@gmail.com"
  @new_user.save
  assert_not duplicate_user.valid?
end

test "email should be unique" do
  duplicate_user = @new_user.dup
  duplicate_user.username = "something"
  duplicate_user.email = @new_user.email.upcase
  @new_user.save
  assert_not duplicate_user.valid?
end


end
