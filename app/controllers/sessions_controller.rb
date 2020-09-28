class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(name: params[:session][:name])
    if @user
      session[:user_id] = @user.id
      flash[:success] = "#{@user.name} Signed In Successfully"
      redirect_to root_path
    else
      flash.now.alert = 'User not found, retype or Sign up please!!'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:error] = 'Signed Out Successfully'
    redirect_to new_user_path
  end
end
