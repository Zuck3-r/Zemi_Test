class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  
  def show
    
  end
  
  def create
    user = User.new(user_params)
    user.save!
    redirect_to users_url
  end
  
  def in_time
    @user = User.find_by(id: params[:id])
  end
  
  def punch_in_time
    params[:user][:in_time] = Time.current
    @user.update_attributes(param[:in_time])
    redirect_to users_url
  end

  def out_time
    
  end
  
  private
  
  def user_params
    params.require(:user).permit(:uid, :mail, :room, :time_in, :time_out)
  end
  
end
