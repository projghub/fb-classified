class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.string :type      
      t.integer :activityable_id
      t.string :activityable_type
      
      t.timestamps
    end
  end
end
