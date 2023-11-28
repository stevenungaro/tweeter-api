class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find_by(id: params["id"])
    render :show
  end

  def create
    @user = User.create(
      name: params["name"],
    )
    if @user.valid?
      render :show
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @user = User.find_by(id: params["id"])
    @user.update(
      name: params["name"] || @user.name,
    )
    if @user.valid?
      render :show
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find_by(id: params["id"])
    @user.destroy
    render json: { message: "user successfully deleted" }
  end
end
