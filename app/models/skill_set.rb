class SkillSet < ActiveRecord::Base
  attr_accessible :name
  has_many :user_skill_set
  has_many :users, through: :user_skill_set
  has_many :sub_skills
end
