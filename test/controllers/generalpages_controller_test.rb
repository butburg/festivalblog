require 'test_helper'

class GeneralpagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Festivalblog"
  end

  test "should get home" do
    get generalpages_home_url
    assert_response :success
  end

  test "should get home via root" do
    get root_url
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

  test "should render home" do
    get generalpages_home_url
    assert_select "title", "Home | #{@base_title}"
  end

  test "should render about" do
    get generalpages_about_url
    assert_select "title", "About | #{@base_title}"
  end

  test "should render legal" do
    get generalpages_legal_url
    assert_select "title", "Legal | #{@base_title}"
  end

end
