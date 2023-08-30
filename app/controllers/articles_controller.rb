class ArticlesController < ApplicationController
    def index
      @articles = Article.all
    end

    def show
      @article = Article.find(params[:id])
    end
    def new
      @article = Article.new
    end

    def create
      @article = Article.new(article_parms)
      if @article.save
        redirect_to article_path(@article), notice: 'コンテンツを保存しました'

      else
        flash.now[:error] = '保存に失敗しました'
        render :new
      end
    end

    private
    def article_parms
      params.require(:article).permit(:title, :content)
    end

end
