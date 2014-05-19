class HomeController < ApplicationController
# http_basic_authenticate_with :email => "tom@gmail.com", :password => "123456789"

# before_filter :authenticate_user!
api :GET, '/home', 'List Users'
  def index
    @users = User.all
    respond_to do |format|
      format.json { render json: @users }
    end
  end

api :GET, '/home/:id', 'List Followers'
api :GET, '/home/:id', 'List Followed'
  def show
    user = User.find(params[:id])
    @followed = user.followed_users
    @followers = user.followers
    respond_to do |format|
      format.json { render json: @followed }
    end
    respond_to do |format|
      format.json { render json: @followers }
    end
  end


end
