class Classified < ActiveRecord::Base
  attr_accessible :name, :description, :publish

  belongs_to :user
end
