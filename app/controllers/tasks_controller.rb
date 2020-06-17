class TasksController < ApplicationController
  def show
      @task = Task.find(params[:job_id])
      authorize @task
      @task.update!(seen: true) unless current_user.constructor?
  end

  def new
    @job = Job.find(params[:job_id])
    @task = Task.new
    authorize @task
  end

  def create
    @job = Job.find(params[:job_id])
    @task = Task.new(task_params)
    @task.job = @job
    authorize @task
    if @task.save!
      redirect_to job_path(@job)
    else
      render :new
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :content)
  end
end
