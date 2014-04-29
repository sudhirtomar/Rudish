class Photo < ActiveRecord::Base
  attr_accessible :gallery_id, :name, :image
  belongs_to :album
  mount_uploader :image, ImageUploader
end
