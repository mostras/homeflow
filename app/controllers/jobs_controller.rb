class JobsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index_constructor]

  def index_constructor
    @jobs = policy_scope(Jobs).where(user_id: current_user)
  end

  def show_constructor
  end

  def index
  end

  def show
  end

end
