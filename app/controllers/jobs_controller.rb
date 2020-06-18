class JobsController < ApplicationController
  before_action :set_job, only: [:show, :completed, :not_completed]

  def index
    @jobs = policy_scope(Job).where(user: current_user)
    @jobs.order(created_at: :desc)
  end

  def show
  end

  def completed
    @job.update!(completed: true)
    redirect_back(fallback_location: users_path)
  end

  def not_completed
    @job.update!(completed: false)
    redirect_back(fallback_location: users_path)
  end

  private

  def set_job
    @job = Job.find(params[:id])
    authorize @job
  end
end

