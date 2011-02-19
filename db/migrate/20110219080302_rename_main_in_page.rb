class RenameMainInPage < ActiveRecord::Migration
  def self.up
    rename_table :mains, :pages
  end

  def self.down
    rename_table :pages, :mains
  end
end
