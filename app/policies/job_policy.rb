class JobPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def completed?
    user.constructor?
  end

  def not_completed?
    user.constructor?
  end
end
