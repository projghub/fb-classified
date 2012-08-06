class RenameColumnTypeOnActivity < ActiveRecord::Migration
  def change
    rename_column :activities, :type, :a_type
  end

end
