require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest

  setup do
    @article = articles(:one)
  end

  test "should not create article (missing title)" do
    assert_no_difference("Article.count") do
      post articles_url, params: { article: { title: "", description: "Test " * 5, text: "Test " * 5 } }
    end
  end

  test "should not create article (missing description)" do
    assert_no_difference("Article.count") do
      post articles_url, params: { article: { title: "Test " * 5, description: "", text: "Test " * 5 } }
    end
  end

  test "should not create article (missing text)" do
    assert_no_difference("Article.count") do
      post articles_url, params: { article: { title: "Test " * 5, description: "Test " * 5, text: "" } }
    end
  end

  test "should show article" do
    get article_url(@article)
    assert_response :success
  end


  test "should update article" do
    patch article_url(@article), params: { article: {title: "Goodbye Then!"} }
  end



  test "should get home" do
    get root_url
    assert_select "title", full_title("Home")
    assert_response :success
  end

end
