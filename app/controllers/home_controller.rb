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
end
