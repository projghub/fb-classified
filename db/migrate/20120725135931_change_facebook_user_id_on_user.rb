class ChangeFacebookUserIdOnUser < ActiveRecord::Migration
  def up
    change_column :users, :facebook_user_id, :integer, :limit => 8
  end

  def down
    change_column :users, :facebook_user_id, :integer
  end
end
