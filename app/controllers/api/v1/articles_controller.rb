module Api
  module V1
    class ArticlesController < ApplicationController
      def index
        articles = Article.order('created_at DESC');
        render json: {status: 'SUCCESS', message: 'Loaded articles', data: articles}, status: :ok
      end

      def show
       article = Article.find(params[:id])
       render json: {status: 'SUCCESS', message: 'Loaded article', data: article}, status: :ok
      end

      def create
        article = Article.new(article_params)
        if article.save
          render json: {status: 'SUCCESS', message: 'Created article', data: article}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Article not saved', data: article.error}, status: :unprocessable_entity
        end
      end

      private

      def article_params
        params.permit(:title, :description)
      end
    end
  end
end