# frozen_string_literal: true

require "test_helper"

class GeneralpagesControllerTest < ActionDispatch::IntegrationTest

  test "should get about" do
    get about_url
    assert_response :success
  end

  test "should get legal" do
    get legal_url
    assert_response :success
  end

  test "should render about" do
    get about_url
    assert_select "title", full_title("About")
  end

  test "should render legal" do
    get legal_url
    assert_select "title", full_title("Legal")
  end

end
