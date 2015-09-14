class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, [Donation, Email, Event, Image, Medium, NavTab, Page, Question, SidebarItem, SlideshowItem, User, Video]
    cannot :destroy, User, email: user.email
    cannot :destroy, Page, required: true
  end
end
