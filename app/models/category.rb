class Category < ActiveRecord::Base
  has_many :articles
  validates_presence_of :name
  mount_before_save_uploader :name_pic, ImageUploader
end
