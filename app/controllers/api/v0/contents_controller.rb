class Api::V0::ContentsController < ApplicationController
  before_action :authenticate_api_v1_user!

  def index
    @content = current_api_v1_user.content
    render json: { posts: @content}
  end

  def create
    @content = Content.new(content_params.merge(user: current_api_v1_user))

    if @content.save
      render json: { message: 'saved' }
    else
      render json: { error: @content.errors.full_messages }
    end
  end

  private

  def content_params
    params.permit(:author, :title, :summary, :content, :status, :published_date)
  end
end
