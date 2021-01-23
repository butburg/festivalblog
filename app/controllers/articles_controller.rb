class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    unless logged_in? && (current_user.author? || current_user.admin?)
      redirect_to root_url, :alert => "Access denied."
    end
  end

  def new
    @article = Article.new
    unless logged_in? && (current_user.author? || current_user.admin?)
      redirect_to root_url, :alert => "Access denied."
    end
  end

  def create
    @article = Article.new(article_params)
    unless logged_in? && (current_user.author? || current_user.admin?)
      redirect_to root_url, :alert => "Access denied."
    end
    if @article.save
      redirect_to @article, notice: "The upload has been succeed."
    else
      render "new"
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
    unless logged_in? && (current_user.author? || current_user.admin?)
      redirect_to root_url, :alert => "Access denied."
    end
  end

  def update
    @article = Article.find(params[:id])
    unless logged_in? && (current_user.author? || current_user.admin?)
      redirect_to root_url, :alert => "Access denied."
    end
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def home
    @articles = Article.all
  end

  def destroy
    @article = Article.find(params[:id])
    unless logged_in? && (current_user.author? || current_user.admin?)
      redirect_to root_url, :alert => "Access denied."
    end
    @article.destroy

    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :description, :text, :img, :created_at)
  end

end
