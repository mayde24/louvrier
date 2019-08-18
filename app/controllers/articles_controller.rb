class ArticlesController < ApplicationController
  def home
    @articles1 = [Article.find(9), Article.find(6), Article.find(7)]
    @articles2 = [Article.find(8), Article.find(9), Article.find(10)]
  end

  def biographie
  end

  def contact
    @contact = ""
  end

  def answer
    redirect_to contact_path
  end

  def index
    @articles = Article.all
    @big = Article.find(4)
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.date = DateTime.civil.datetime.to_formatted_s(:long_ordinal)
    @article.save
    redirect_to article_path(@article)
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:name, :description, :content, :photo)
  end
end
