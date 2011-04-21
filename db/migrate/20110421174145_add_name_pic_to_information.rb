class AddNamePicToInformation < ActiveRecord::Migration
  def self.up
    add_column :information, :name_pic, :string
  end

  def self.down
    remove_column :information, :name_pic
  end
end
