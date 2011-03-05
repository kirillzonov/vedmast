class AddColumnShortToInformation < ActiveRecord::Migration
  def self.up
    add_column :information, :short, :string
  end

  def self.down
    remove_column :information, :short
  end
end
