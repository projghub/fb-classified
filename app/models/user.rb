class User < ActiveRecord::Base
  attr_accessible :facebook_user_id, :graph, :email, :name, :first_name, :last_name, :gender

  has_many :classifieds
  
  class << self
    def find_or_create_user(user_data)
      user = find_by_facebook_user_id(user_data['id'])
     if user
       user
     else
       user = User.create(:email => user_data['email'], :facebook_user_id => user_data['id'], :name => user_data['name'],
                       :first_name => user_data['first_name'], :last_name => user_data['last_name'], :gender => user_data['gender'])       
     end
     return user
    end
  end

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
