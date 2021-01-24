require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: { username: "TestUser", email: "TestEmail@test.de", password: "test123", password_confirmation: "test123"} }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should not create user (no username)" do
    assert_no_difference("User.count") do
      post users_url, params: { user: { username: "", email: "TestEmail@test.de", password: "test123", password_confirmation: "test123"} }
    end
  end

  test "should not create user(no email)" do
    assert_no_difference("User.count") do
      post users_url, params: { user: { username: "TestUser", email: "", password: "test123", password_confirmation: "test123"} }
    end
  end

  test "should not create user (invalid pw 1)" do
    assert_no_difference("User.count") do
      post users_url, params: { user: { username: "TestUser", email: "TestEmail@test.de", password: "test12", password_confirmation: "test123"} }
    end
  end

  test "should not create user (invalid pw 2)" do
    assert_no_difference("User.count") do
      post users_url, params: { user: { username: "TestUser", email: "TestEmail@test.de", password: "", password_confirmation: "test123"} }
    end
  end

  test "should not create user (invalid pw 3)" do
    assert_no_difference("User.count") do
      post users_url, params: { user: { username: "TestUser", email: "TestEmail@test.de", password: "test123", password_confirmation: ""} }
    end
  end

  test "should not create user (invalid pw 4)" do
    assert_no_difference("User.count") do
      post users_url, params: { user: { username: "TestUser", email: "TestEmail@test.de", password: "", password_confirmation: ""} }
    end
  end

end
