class UsersController < ApplicationController
  def index
    @users = policy_scope(Users)
  end

  def new
  end

  def create
  end
end
