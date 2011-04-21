class Information < ActiveRecord::Base
  validates_presence_of :name, :content
  mount_before_save_uploader :name_pic, ImageUploader
end
