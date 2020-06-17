class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.constructor?
        scope.where(constructor: user)
      else
        scope.none
      end
    end
  end

  def show?
    user.constructor?
  end

  def details?
    user.constructor?
  end
end
