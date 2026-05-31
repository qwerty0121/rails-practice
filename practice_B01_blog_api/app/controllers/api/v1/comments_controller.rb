class Api::V1::CommentsController < ApplicationController
  def index
    @comments = Comment.where(article_id: params[:article_id]).includes(:user).order(created_at: :desc)

    response = @comments.map do |comment|
      {
        content: comment.content,
        user_name: comment.user.name
      }
    end

    render json: response
  end
end
