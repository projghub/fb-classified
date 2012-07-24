class Classified < ActiveRecord::Base
  attr_accessible :name, :description, :publish, :region_id, :category_id

  belongs_to :user
  belongs_to :region
  belongs_to :category

  define_index do
    indexes name, :sortable => true
    indexes description
    indexes category(:name), :as => :category

    has category_id, created_at, updated_at
    set_property :delta => true
  end  
end
