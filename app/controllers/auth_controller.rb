class AuthController < ApplicationController

  def show
    if request.headers['Authorization']
      @encoded_token = request.headers['Authorization'].split(' ')[1]
      @token = JWT.decode(@encoded_token, 'password')
      @admin_id = @token[0]['admin_id']
      @admin = Admin.find(@admin_id)
      render json: {admin: @admin, jwt: @encoded_token }
    end
  end

  def create
    @admin = Admin.find_by(username: login_params[:username])
    if @admin && @admin.authenticate(login_params[:password])
      # make them a token and send back to the front end
      @token = JWT.encode({admin_id: @admin.id}, 'password')
      # returns back the actual user and the token
      render json: { admin: @admin, jwt: @token }, status: :accepted
    else
      render json: {errors: 'Username and Password incorrect'}, status: :unauthorized
    end
  end

  private
  def login_params
    params.require(:auth).permit(:username, :password)
  end
end