class Ability
  include CanCan::Ability

  def initialize(user)
    if user && user.admin_flg?
      can :access, :rails_admin
      can :manage, :all
    elsif user
      can %i(read create update), EventInformation
    else
      can %i(read), EventInformation
      cannot :read, User
    end
  end
end
