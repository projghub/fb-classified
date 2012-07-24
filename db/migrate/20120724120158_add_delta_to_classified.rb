class AddDeltaToClassified < ActiveRecord::Migration
  def change
    add_column :classifieds, :delta, :boolean, :default => true, :null => false
  end
end
