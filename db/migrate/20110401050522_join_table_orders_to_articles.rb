class JoinTableOrdersToArticles < ActiveRecord::Migration
  def self.up
    create_table :articles_orders, :id => false do |t|
      t.integer :article_id
      t.integer :order_id
    end
  end

  def self.down
    drop_table :articles_orders
  end
end
