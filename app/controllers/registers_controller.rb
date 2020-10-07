class RegistersController < ApplicationController
  
  def index
    @users = User.all
  end

  def new
    @user = User.new()
  end
  
  def create
    user = User.new(user_params)
    user.save!
    redirect_to registers_url
  end
  
  def show
  
  end
  
  def update
  end
  
  private
  
  
  def user_params
    params.require(:user).permit(:uid, :mail)
  end

end