class AuthController < ApplicationController
  skip_before_action :require_login, only: [:login, :auto_login]
  def login
    user =  User.find_by(username: params[:username])
    if user && user.autenthicate(params[:password])
      payload = { user_id: user.id }
      token = encode_token(payload)
      render json: { user: user, jwt: token, success: "Welcome, #{user.username}" }
    else
      render json: {failure: 'Login Failed. Name or Password incorrect'}
    end
  end

  def auto_login
    if session_user
      render json: session_user
    else
      render json: {errors: 'No user logged in'}
    end
  end

  def user_is_authed
    render json: {message: "You have access"}
  end
end
