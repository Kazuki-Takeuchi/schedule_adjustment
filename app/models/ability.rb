class Ability
  include CanCan::Ability

  def initialize(user)
    if user && user.admin_flg?
      can :access, :rails_admin
      can :manage, :all
    else
      cannot :read, User
    end
  end
end
