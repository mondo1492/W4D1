class UsersController < ApplicationController
  def index
    # @users = User.all?
    # render JSON: @users
    render text: "We're good at this!"
  end

  def create
    render json: params

  end

  def show
    render json: params
  end
end
