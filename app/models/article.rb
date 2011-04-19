class Article < ActiveRecord::Base
  belongs_to :category
  has_and_belongs_to_many :orders, :join_table => "articles_orders", :association_foreign_key => 'order_id'
  validates_presence_of :name, :short_description, :little_pic, :category_id, :price, :material
  scope :recent, order("created_at desc").limit(5)
  mount_before_save_uploader :name_pic, ImageUploader
  mount_before_save_uploader :little_pic, ImageUploader
end
