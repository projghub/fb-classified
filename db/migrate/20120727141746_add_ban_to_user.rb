class AddBanToUser < ActiveRecord::Migration
  def change
    add_column :users, :ban, :boolean, :default => false, :null => false
  end
end
