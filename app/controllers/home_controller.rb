class HomeController < ApplicationController
    def index
        @title="ホーム"
    end
    def about
        @title="アバウト"
    end
end