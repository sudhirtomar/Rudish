class Photo < ActiveRecord::Base
  attr_accessible :gallery_id, :name, :image
  belongs_to :album
  belongs_to :user
  mount_uploader :image, ImageUploader
end
