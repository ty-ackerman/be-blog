class ArticleController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.create(article_params)

    if @article.save
      redirect_to @article
  end


  private

  def article_params
    params.require(:article).permit(:title, :description)
  end
end
