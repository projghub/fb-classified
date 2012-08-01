class Activity < ActiveRecord::Base
  attr_accessible :activityable_id, :activityable_type, :type, :user_id
  belongs_to :user
  scope :activity_classified_view, where(type: "show_classified")
end
