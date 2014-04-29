class Team < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :user_team
  has_many :users, through: :user_team
end
