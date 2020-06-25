class TutorialsController < ApplicationController
  def index
    @tutorials = policy_scope(Tutorial)
  end
end
