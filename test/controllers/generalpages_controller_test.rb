require 'test_helper'

class GeneralpagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get generalpages_home_url
    assert_response :success
  end

  test "should get about" do
    get generalpages_about_url
    assert_response :success
  end

  test "should get legal" do
    get generalpages_legal_url
    assert_response :success
  end

end
