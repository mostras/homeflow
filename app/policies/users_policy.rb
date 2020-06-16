class UsersPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      users = User.where(constructor = false)
      user.select( |user| user.referent_constructor == )
    end
  end
end
