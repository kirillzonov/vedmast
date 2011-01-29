class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :name
      t.text :description
      t.string :little_pic
      t.text :more_pics
      t.references :category
      t.integer :price
      t.boolean :existence

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
