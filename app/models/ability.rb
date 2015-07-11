class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, [Page, User]
    cannot :destroy, User, email: user.email
  end
end
