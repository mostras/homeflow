class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(constructor: user)
    end
  end

  def show?
    true
  end
end
