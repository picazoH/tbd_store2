class PurchaseAbility
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :purchase if user.admin? # falta condición session
  end

end