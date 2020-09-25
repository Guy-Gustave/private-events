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
    redirect_to root_path, :notice => "Signed Out Successfully"
  end
end
