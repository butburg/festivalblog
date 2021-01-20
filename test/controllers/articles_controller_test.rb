require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get articles_url
    assert_select "title", full_title("Index")
    assert_response :success
  end

  test "should get new" do
    get new_article_url
    assert_select "title", full_title("New")
    assert_response :success
  end

  test "should create article" do
    assert_difference("Article.count") do
      post articles_url, params: { article: { title: "Hello There!", description: "Hello There!Hello There!", text: "Hello There!Hello There!Hello There!Hello There!Hello There!Hello There!Hello There!Hello There!Hello There!" } }
    end
    assert_redirected_to article_url(Article.last)
  end

  test "should not create article (missing title)" do
    assert_no_difference("Article.count") do
      post articles_url, params: { article: { title: "", description: "Hello There!Hello There!", text: "Hello There!Hello There!Hello There!Hello There!Hello There!Hello There!Hello There!Hello There!Hello There!" } }
    end
  end

  test "should not create article (missing description)" do
    assert_no_difference("Article.count") do
      post articles_url, params: { article: { title: "Hello There!", description: "", text: "Hello There!Hello There!Hello There!Hello There!Hello There!Hello There!Hello There!Hello There!Hello There!" } }
    end
  end

  test "should not create article (missing text)" do
    assert_no_difference("Article.count") do
      post articles_url, params: { article: { title: "Hello There!", description: "Hello There!Hello There!", text: "" } }
    end
  end

  test "should show article" do
    get article_url(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_url(@article)
    assert_select "title", full_title("Edit")
    assert_response :success
  end

  test "should update article" do
    patch article_url(@article), params: { article: {title: "Goodbye Then!"} }
  end

  test "should destroy article" do
    assert_difference("Article.count", -1) do
      delete article_url(@article)
    end

    assert_redirected_to articles_url
  end

  test "should get home" do
    get root_url
    assert_select "title", full_title("Home")
    assert_response :success
  end

end
