class TasksController < ApplicationController
  def show
    @task = Task.find(params[:id])
    authorize @task
  end

  def new
  end

  def create
  end
end
