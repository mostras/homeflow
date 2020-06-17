class UsersController < ApplicationController
  before_action :set_user, only: [:show, :details]

  def index
    @clients = policy_scope(User)
  end

  def show
  end

  def new
    @client = User.new
    authorize @client
  end

  def create
    @client = User.new(user_params)
    authorize @client

    @client.constructor = current_user
  end

  def details
  end

  private

  def set_user
    @client = User.find(params[:id])
    authorize @client
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address_street, :address_zip, :address_city, :phone_number)
  end
end
