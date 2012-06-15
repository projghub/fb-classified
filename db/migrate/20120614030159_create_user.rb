class CreateUser < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.integer :facebook_user_id

      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
