class SubSkill < ActiveRecord::Base
  attr_accessible :skill_set_id, :name
  belongs_to :skill_set
end
