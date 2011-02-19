class AddMaterialToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :material, :string
  end

  def self.down
    remove_column :articles, :material
  end
end
