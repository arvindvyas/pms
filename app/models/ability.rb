# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
   send(user.role.squish.tr(' ', '_') + '_can_access_resources') 
  end


  def admin_can_access_resources
    can :manage, Project

  end

  def developer_can_access_resources
    can :red, Project
  end
end
