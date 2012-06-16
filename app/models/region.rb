class Region < ActiveRecord::Base
  attr_accessible :name, :abbreviation

  has_many :classifieds
end
