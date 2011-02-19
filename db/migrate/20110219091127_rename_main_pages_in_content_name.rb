class RenameMainPagesInContentName < ActiveRecord::Migration
  def self.up
    rename_column :pages, :page, :name
    rename_column :pages, :main, :content
  end

  def self.down
    rename_column :pages, :name, :page
    rename_column :pages, :content, :main
  end
end
