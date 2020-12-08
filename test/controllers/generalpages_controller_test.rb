# frozen_string_literal: true
require "test_helper"

class GeneralpagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Festivalblog"
  end

  test "should get home via root" do
    get root_url
    assert_response :success
  end

  test "should get about" do
    get about_url
    assert_response :success
  end

  test "should get legal" do
    get legal_url
    assert_response :success
  end

  test "should render home" do
    get root_url
    assert_select "title", "Home | #{@base_title}"
  end

  test "should render about" do
    get about_url
    assert_select "title", "About | #{@base_title}"
  end

  test "should render legal" do
    get legal_url
    assert_select "title", "Legal | #{@base_title}"
  end

end
