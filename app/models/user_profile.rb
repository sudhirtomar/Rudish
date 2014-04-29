class UserProfile < ActiveRecord::Base
  attr_accessible :emp_id, :user_id
  belongs_to :user
end
