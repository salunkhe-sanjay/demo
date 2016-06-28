class UsersController < ApplicationController
#	before_action :authenticate
#	before_action :doorkeeper_authorize! , :only => [:index]
	def index
		@users = User.all
		# respond_to do |format|
		# 	format.json {render :json => @users.to_json}
		# end
	end

  def token
	puts "got token"
	end

  def new
		@user = User.new
	  render  "form"
	end

  def create
		@user = User.new(set_params)
		if @user.save
			redirect_to root_path
		else
			render "form"
		end
	end

	def show
		@user = User.find(params[:id])
	end

  def login
		@user = User.new
	end

  def check_login
		session[:current_user_id] = 1
	end

  def logout
		session.destroy
	end
	private

  def set_params
		params.require(:user).permit(:name,:lastname)
	end
end