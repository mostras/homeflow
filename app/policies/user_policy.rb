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

  def map?
    user.constructor?
  end

  def stop_work?
    user.constructor?
  end

  def resume_work?
    user.constructor?
  end
end
