class Classified < ActiveRecord::Base
  attr_accessible :name, :description, :publish, :region_id, :category_id, :photos_attributes, :user_id, :sold
  
  belongs_to :user
  belongs_to :region
  belongs_to :category
  
  has_many :photos, :as => :photoable
  accepts_nested_attributes_for :photos, :allow_destroy => true , :reject_if =>:all_blank
  has_many :activities, :as => :activityable
  
  define_index do
    indexes name, :sortable => true
    indexes description
    
    has category_id,region_id, created_at, updated_at
    # if Rails.env.development?
      # set_property :delta => true
    # elsif Rails.env.production?
      set_property :delta => FlyingSphinx::DelayedDelta
    # end    
  end  
  
  
end
