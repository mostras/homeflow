class TasksController < ApplicationController
  def show
    @task = Task.find(params[:id])
    authorize @task
  end

  def new
    @task = Task.new
    authorize @task
  end

  def create
    @job = Job.find(49)
    @task = Task.new(task_params)
    @task.job = @job
    authorize @task
    if @task.save!
      redirect_to job_path(49)
    else
      render :new
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :content)
  end

end
