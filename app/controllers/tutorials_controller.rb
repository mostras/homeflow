class TutorialsController < ApplicationController
  def index
    @tutorials = policy_scope(Tutorial)
  end

  def show
    @tutorial = Tutorial.find(params[:id])
    authorize @tutorial
  end
end
