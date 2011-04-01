class Order < ActiveRecord::Base
  has_and_belongs_to_many :articles, :join_table => "articles_orders", :foreign_key => 'order_id', :uniq => false
end
