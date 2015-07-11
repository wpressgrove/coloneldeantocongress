class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, [Event, Page, User]
    cannot :destroy, User, email: user.email
    cannot :destroy, Page, required: true
  end
end
