class AddSoldToClassified < ActiveRecord::Migration
  def change
    add_column :classifieds, :sold, :boolean, :default => false, :null => false
  end
end
