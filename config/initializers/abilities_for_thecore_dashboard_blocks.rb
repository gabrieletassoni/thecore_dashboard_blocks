module Abilities
  class ThecoreDashboardBlocks
    include CanCan::Ability
    def initialize user
      # # By default only admin can do everything
      # # Here are example of usage
      # if user && !user.admin? && user.has_role?(:operator)
      #   # a specific role, brings specific powers
      #   cannot :manage, :all
      #   can :access, :rails_admin # grant access to rails_admin
      # end
      # # Root actions must be declared like this:
      # if user && user.admin?
      #   can :name_of_root_action, :all
      # end
    end
  end
end
