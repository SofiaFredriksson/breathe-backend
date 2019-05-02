class Api::V1::AuthController < ApplicationController

def login
  @user = User.find_by(username: params[:username])

  if @user && @user.authenticate(params[:password])
    token = JWT.encode({user_id: @user.id}, "super_secret_key")
    render json: {user: UserSerializer.new(@user), token: token}
  else
    render json: {error: 'Try again'}
  end
end

def get_current_user
  token = request.headers["Authorization"]
  decoded_token = JWT.decode(token, "super_secret_key")
  user_id = decoded_token[0]["user_id"]
  @user = User.find_by(id: user_id)
  if @user
    render json: {user: UserSerializer.new(@user)}
  else
    render json: {error: 'Try again'}
  end
end

end
