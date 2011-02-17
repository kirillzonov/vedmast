class RemoveMorePicsExistanceFromArticles < ActiveRecord::Migration
  def self.up
    remove_column :articles, :more_pics, :existence
  end

  def self.down
    add_column :articles, :more_pics, :test
    add_column :articles, :existence, :boolean
  end
end
