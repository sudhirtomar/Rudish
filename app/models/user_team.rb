class UserTeam < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  belongs_to :team
end
