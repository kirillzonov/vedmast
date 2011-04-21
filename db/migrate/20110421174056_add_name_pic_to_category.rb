class AddNamePicToCategory < ActiveRecord::Migration
  def self.up
    add_column :categories, :name_pic, :string
  end

  def self.down
    remove_column :categories, :name_pic
  end
end
