class Api::V1::ArticlesController < ApplicationController
  def index
    articles = Article.order(id: :desc)

    if params[:tag_name].present?
      articles = articles.joins(:tags).where(tags: { name: params[:tag_name] })
    end

    if params.key?(:has_comments)
      articles = articles.joins(:comments).distinct
    end

    @articles = articles.eager_load(:user, :tags)

    response = @articles.map do |article|
      {
        title: article.title,
        user_name: article.user.name,
        tags: article.tags.map(&:name)
      }
    end

    render json: response
  end
end
