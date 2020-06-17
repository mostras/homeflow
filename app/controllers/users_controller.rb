class UsersController < ApplicationController
  before_action :set_user, only: [:show, :details]

  def index
    @clients = policy_scope(User)
  end

  def show
  end

  def new
  end

  def create
  end

  def details
  end

  private

  def set_user
    @client = User.find(params[:id])
    authorize @client
  end
end
