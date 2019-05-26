# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
   send(user.role.squish.tr(' ', '_') + '_can_access_resources', user) 
  end

  def admin_can_access_resources(user)
    can :manage, Project
  end

  def developer_can_access_resources(user)
     can :manage, Task,  owner_id: user.id
  end
end
