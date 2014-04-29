class Album < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  has_many :photos, :dependent => :destroy
end
