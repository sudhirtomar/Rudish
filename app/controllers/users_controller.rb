class UsersController < ApplicationController
 # skip_before_filter :authenticate_user! # we do not need devise authentication here
  before_filter :fetch_user, :except => [:index, :create]

  respond_to :html, :json, :xml

  def fetch_user
    @user = User.find_by_id(params[:id])
  end

  api :GET, '/users', 'List Users'
  def index
    @users = User.all
    respond_with  @users
  end

  api :GET, "/users/:id", "Show an user"
  def show
    respond_with  @user
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

api :POST, '/users/create_follower/follower_id', 'Follow User'
  def create_follower
    user = User.find(params[:id])
    @followed = user.relationships.create(:followed_id => params[:follower_id])
    respond_with @followed 
  end

api :DELETE, '/users/unfollow/follower_id', 'Unfollow User'
  def unfollow
    user = User.find(params[:id])
    @followed = user.relationships.find(params[:follower_id]).destroy
    respond_with  @followed 
    
  end
end
