class AddSizeToArticle < ActiveRecord::Migration
  def self.up
    add_column :articles, :size, :string
  end

  def self.down
    remove_column :articles, :size
  end
end
