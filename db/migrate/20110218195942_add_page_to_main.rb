class AddPageToMain < ActiveRecord::Migration
  def self.up
    add_column :mains, :page, :string
  end

  def self.down
    remove_column :mains, :page
  end
end
