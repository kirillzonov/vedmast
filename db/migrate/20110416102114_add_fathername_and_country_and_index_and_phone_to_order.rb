class AddFathernameAndCountryAndIndexAndPhoneToOrder < ActiveRecord::Migration
  def self.up
    add_column :orders, :fathername, :string
    add_column :orders, :country, :string
    add_column :orders, :index, :string
    add_column :orders, :phone, :string
  end

  def self.down
    remove_column :orders, :phone
    remove_column :orders, :index
    remove_column :orders, :country
    remove_column :orders, :fathername
  end
end
