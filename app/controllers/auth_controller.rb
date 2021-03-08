class AuthController < ApplicationController
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
end
