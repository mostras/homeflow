class UsersController < ApplicationController
  def index
    @clients = policy_scope(User)
  end

  def show
    @client = User.find(params[:id])
    authorize @client

  end

  def new
  end

  def create
  end
end
