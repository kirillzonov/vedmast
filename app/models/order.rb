class Order < ActiveRecord::Base
  has_and_belongs_to_many :articles, :join_table => "articles_orders", :foreign_key => 'order_id', :uniq => false
  validates :email, :presence => true, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
  validates :firstname, :presence => true
  validates :lastname, :presence => true
  validates :fathername, :presence => true
  validates :country, :presence => true
  validates :zip_code, :presence => true, :numericality => true, :length => {:minimum => 3, :maximum => 8}
  validates :address, :presence => true
end
