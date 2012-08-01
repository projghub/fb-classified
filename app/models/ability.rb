class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.has_role? :admin
      can :manage, :all
      can :access, :rails_admin   # grant access to rails_admin
      can :dashboard              # grant access to the dashboard
    elsif user
      can :manage, Classified do |classified|
        classified and classified.user_id == user.id
      end
      can :manage, User do |u|
        user and u.id == user.id
      end
    end
  end
end
