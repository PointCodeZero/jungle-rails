class UsersController < ApplicationController
  
  def new
  end

  def create
    user = User.new(user_params)

    if user.save
      session[:user_id] = user.id
      redirect_to '/', flash: { success: 'User created successfully!' }
    else
      redirect_to '/signup', flash: { warning: 'Invalid Email and Password'}
    end
  end

  private

  def user_params
    # add first and last name
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
