class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Group, user_id: user.id
    can :manage, Investment, user_id: user.id
  end
end
