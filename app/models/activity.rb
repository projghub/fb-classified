class Activity < ActiveRecord::Base
  attr_accessible :activityable_id, :activityable_type, :type, :user_id
  belongs_to :user
  scope :activity_classified_view, where(a_type: "show_classified")
end
