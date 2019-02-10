class UsersController < ApplicationController

  before_action :authenticate_user!, only: [:edit, :update]
  before_action :check_autorization, only: [:edit, :update]
  before_action :set_user, except: [:index]

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      flash.now[:alert] = "somethig wrong"
      render :edit
    end
  end


  private

  def check_autorization
    unless current_user.id == params[:id].to_i
      redirect_to root_url
    end
  end

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
      params.require(:user).permit(:email, :nickname)
  end

end
