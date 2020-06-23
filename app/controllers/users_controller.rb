class UsersController < ApplicationController
  before_action :set_user, only: [:show, :details, :stop_work, :resume_work]

  def index
    @user = current_user
    @clients = policy_scope(User).order(updated_at: :desc)
  end

  def show
  end

  def details
  end

  def map
    @clients = policy_scope(User)
    @client = User.geocoded
    authorize @client

    @markers = @client.map do |u|
      {
        lat: u.latitude,
        lng: u.longitude,
        first_name: u.first_name,
        last_name: u.last_name,
        full_address: u.full_address

      }
    end
  end

  def stop_work
    @client.update!(in_progress: false)
    authorize @client
    send_work_paused_email
    redirect_back(fallback_location: users_path)
  end

  def resume_work
    @client.update!(in_progress: true)
    authorize @client
    send_work_paused_email
    redirect_back(fallback_location: users_path)
  end

  private

  def set_user
    @client = User.find(params[:id])
    authorize @client
  end

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :address_street, :address_zip, :address_city, :phone_number)
  end

  def send_work_paused_email
    TaskMailer.with(client: @client).work_paused.deliver_later
  end
end
