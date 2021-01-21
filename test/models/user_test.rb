require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: "Example User", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar")
  end

  test "shuold be valid" do
    assert @user.valid?
  end

  test "username should be preset" do
    @user.username = "     "
    assert_not @user.valid?
  end

  test "email should be preset" do
    @user.email = "     "
    assert_not @user.valid?
  end

  test "username shuold not be to long" do
    @user.username = "a" * 51
    assert_not @user.valid?
  end

  test "email shuold not be to long" do
    @user.username = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  test "email validation shoul accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.com A_US-ER@foo.bar.org
                          first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "email validation shoul reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.username@example.
                          foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end

  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end
end
