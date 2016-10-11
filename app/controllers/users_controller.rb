class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "User created"
      last_created_user = User.last
      log_in @user
      redirect_to "/posts"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to '/'
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
