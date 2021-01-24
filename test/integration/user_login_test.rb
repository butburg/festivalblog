require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:one)
  end

  test "login with invalid information" do
    get login_url
    assert_template "sessions/new"
    post login_url, params: {
      session: {
        email: "",
        password: ""
      }
    }
    assert_template "sessions/new"
    assert_not flash.empty?
    get root_url
    assert flash.empty?
  end

  test "login with valid email/invalid password" do
    get login_url
    assert_template "sessions/new"
    post login_url, params: {
      session: {
        email: @user.email,
        password: "invalid"
      }
    }
    assert_template "sessions/new"
    assert_not flash.empty?
    get root_url
    assert flash.empty?
  end

  test "login with valid information followed by logout" do
    get login_url

    # Login
    post login_url, params: {
      session: {
        email: @user.email,
        password: "password"
      }
    }
    assert_redirected_to @user
    follow_redirect!
    assert_template "users/show"
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", user_path(@user)

    # Logout
    delete logout_path
    assert_redirected_to root_url
    follow_redirect!
    assert_select "a[href=?]", login_path
    assert_select "a[href=?]", logout_path, count: 0
    assert_select "a[href=?]", user_path(@user), count: 0
  end
end
