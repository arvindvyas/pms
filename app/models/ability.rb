# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user.role
  end


  def admin
    can :manage
  end

  def developer
    can :read
  end
end
