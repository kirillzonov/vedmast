class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.string :email
      t.string :firstname
      t.string :lastname
      t.text :address

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
