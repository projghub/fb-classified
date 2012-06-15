class CreateRegions < ActiveRecord::Migration
  def up
    create_table :regions do |t|
      t.string :name
      t.string :abbreviation

      t.timestamps
    end
  end

  def down
    drop_table :regions
  end
end
