class HomeController < ApplicationController
# http_basic_authenticate_with :email => "tom@gmail.com", :password => "123456789"

# before_filter :authenticate_user!
respond_to :html, :json, :xml

api :GET, '/home', 'List Users'
  def index
    @users = User.all
   respond_with  @users
  end

api :GET, '/home/:id', 'List Followers'
api :GET, '/home/:id', 'List Followed'
  def show
    user = User.find(params[:id])
    @followed = user.followed_users
    @followers = user.followers
   
  end


end
