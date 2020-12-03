require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest


  #### ROOT HOME ####
  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should render Home root" do
    get root_url
    assert_select "title", "Home | #{@base_title}"
  end


  #### INDEX SHOW ####
  test "should get index" do
    get index
    assert_response :success
  end

  test "should render index" do
    get index
    assert_select "title", " | #{@base_title}"
  end


  #### NEW ####
  test "should get new" do
    get new
    assert_response :success
  end

  test "should render new" do
    get new
    assert_select "new", " | #{@base_title}"
  end


  #### EDIT ####
  test "should get edit" do
    get edit
    assert_response :success
  end

  test "should render edit" do
    get edit
    assert_select "title", " | #{@base_title}"
  end

end
