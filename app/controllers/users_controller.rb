class UsersController < ApplicationController
  def sign_in
    if user = User.find_by_username(params[:user][:username])
      if user.password == params[:user][:password]
        session[:user_id] = user.id
        redirect_to :back
      else
        render :text => "wrong password!"
      end
    else
      render :text => "no ! name! "
    end
  end
end
