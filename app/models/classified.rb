class Classified < ActiveRecord::Base
  attr_accessible :name, :description, :publish, :region_id, :category_id

  belongs_to :user
  belongs_to :region
  belongs_to :category

  def self.search(query)
    if query
      where('name LIKE ?', "%#{query}%")
    else
      scoped
    end
  end
end
