class AddShortdescriptionToArticle < ActiveRecord::Migration
  def self.up
    add_column :articles, :short_description, :text
  end

  def self.down
    remove_column :articles, :short_description   
  end
end
