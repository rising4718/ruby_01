class HomeController < ApplicationController
    def index
      @article = Article.first
    end
    def about
        @article = Article.first
    end
end
