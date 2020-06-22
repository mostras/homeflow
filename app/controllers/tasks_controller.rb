class TasksController < ApplicationController
  def show
    @task = Task.find(params[:id])
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
    if @task.save
      @job.completed = false
      @job.save
      send_notification_task_email
      redirect_to job_path(@job)
    else
      render :new
    end
  end

  private

  def send_notification_task_email
    TaskMailer.with(client: @task.job.user, task: @task).notification.deliver_later
  end

  def task_params
    params.require(:task).permit(:title, :content, photos: [])
  end
end
