class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.constructor?
        scope.where(constructor: user)
      else
        p "alors qu'est ce qu'on fait?"
      end
    end
  end

  def show?
    user.constructor?
  end
end
