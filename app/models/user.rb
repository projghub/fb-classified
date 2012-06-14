class User < ActiveRecord::Base
  attr_accessible :facebook_user_id, :graph

  has_many :classifieds

#  def likes
#    @likes ||= graph.get_connections(facebook_user_id, 'likes')
#  end
#
#  def friends
#    @friends ||= graph.get_connections(facebook_user_id, 'friends')
#  end
#
#  def feeds
#    @feeds ||= graph.get_connections(facebook_user_id, 'feed')
#  end
#
#  def likes_by_category
#    @likes_by_category ||= likes.sort_by {|l| l['name']}.group_by {|l| l['category']}.sort
#  end
end
