class UsersController < ApplicationController
  before_action :set_user, only: [:show, :details]

  def index
    @clients = policy_scope(User)
  end

  def show
  end

  def details
  end

  private

  def set_user
    @client = User.find(params[:id])
    authorize @client
  end

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :address_street, :address_zip, :address_city, :phone_number)
  end
end
