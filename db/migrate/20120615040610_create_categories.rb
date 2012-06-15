class CreateCategories < ActiveRecord::Migration
  def up
    create_table :categories do |t|
      t.integer :parent_id
      t.string :name

      t.timestamps
    end
  end

  def down
    drop_table :categories
  end
end
