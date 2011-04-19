class AddNamePicToArticle < ActiveRecord::Migration
  def self.up
    add_column :articles, :name_pic, :string
  end

  def self.down
    remove_column :articles, :name_pic
  end
end
