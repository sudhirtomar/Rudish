class UsersController < ApplicationController
 # skip_before_filter :authenticate_user! # we do not need devise authentication here
 # before_filter :fetch_user, :except => [:index, :create]
  def fetch_user
    @user = User.find_by_id(params[:id])
  end

  api :GET, '/users', 'List Users'
  def index
    @users = User.all
    respond_to do |format|
      format.json { render json: @users }
    end
  end

  api :GET, "/users/:id", "Show an user"
  def show
    respond_to do |format|
      format.json { render json: @user }
    end
  end

  api :POST, "/users", "Create an user"
  def create
    @user = User.new(params[:user])
    @user.temp_password = Devise.friendly_token
    respond_to do |format|
      if @user.save
        format.json { render json: @user, status: :created }
      else
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  api :PUT, "/users/:id", "Update an user"
  def update
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.json { head :no_content, status: :ok }
      else
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
 api :DELETE, "/users/:id", "Delete an user"
  def destroy
    respond_to do |format|
      if @user.destroy
        format.json { head :no_content, status: :ok }
      else
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end
