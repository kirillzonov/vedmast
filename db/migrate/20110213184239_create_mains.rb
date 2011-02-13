class CreateMains < ActiveRecord::Migration
  def self.up
    create_table :mains do |t|
      t.text :main

      t.timestamps
    end
  end

  def self.down
    drop_table :mains
  end
end
