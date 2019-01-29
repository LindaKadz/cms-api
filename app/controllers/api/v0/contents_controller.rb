class Api::V0::ContentsController < ApplicationController
  def index
    render json: { message: 'Present!' }
  end
end
