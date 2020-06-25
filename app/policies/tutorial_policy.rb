class TutorialPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.constructor?
        scope.none
      else
        scope.all
      end
    end
  end

  def index?
    !user.constructor?
  end
end
