class UserSkillSet < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  belongs_to :skill_set
end
