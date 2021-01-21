require 'test_helper'

class HomeTest < ActionDispatch::IntegrationTest
  test "get header" do
    get root_url
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", legal_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", login_path
  end

end
