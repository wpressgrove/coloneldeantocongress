class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, [Donation, Event, Page, SidebarItem, User]
    cannot :destroy, User, email: user.email
    cannot :destroy, Page, required: true
  end
end
