class RenameIndexToZipCodeInOrders < ActiveRecord::Migration
  def self.up
    change_table :orders do |t|
      t.rename :index, :zip_code
    end
  end

  def self.down
    change_table :orders do |t|
      t.rename :zip_code, :index
    end
  end
end
