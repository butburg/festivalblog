require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  def setup
    @article = Article.new(title: "Test Title1", description: "Test Description 1", text: "Hello World, this is a text to check the model of the Articles!")
  end

  ### Validation Tests ###
  test "should be valid" do
    assert @article.valid?
  end

  ### Present tests ###
  test "title should be present" do
    @article.title = "     "
    assert_not @article.valid?
  end

  test "text should be present" do
    @article.text = "     "
    assert_not @article.valid?
  end

  ### Length validation ###
  test "title should not be to long" do
    @article.title = "a" * 81
    assert_not @article.valid?
  end

  test "description should not be to long" do
    @article.description = "a" * 122
    assert_not @article.valid?
  end

  test "text should not be to long" do
    @article.text = "a" * 7005
    assert_not @article.valid?
  end

  test "title should not be to short" do
    @article.title = "a" * 4
    assert_not @article.valid?
  end

  test "description should not be to short" do
    @article.description = "a" * 4
    assert_not @article.valid?
  end

  test "text should not be to short" do
    @article.text = "a" * 19
    assert_not @article.valid?
  end

  ### Edge cases ###
  test "title minimum" do
    @article.title = "a" * 5
    assert @article.valid?
  end

  test "description minimum" do
    @article.description = "a" * 5
    assert @article.valid?
  end

  test "text minimum" do
    @article.text = "a" * 20
    assert @article.valid?
  end

  test "title maximum" do
    @article.title = "a" * 80
    assert @article.valid?
  end

  test "description maximum" do
    @article.description = "a" * 120
    assert @article.valid?
  end

  test "text maximum" do
    @article.text = "a" * 7000
    assert @article.valid?
  end


end
