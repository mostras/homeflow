class JobsController < ApplicationController

  def index
    @jobs = policy_scope(Job).where(user: current_user)
  end

  def show
    @job = Job.find(params[:id])
    authorize @job
  end
end

