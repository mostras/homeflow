class DocumentsController < ApplicationController
  def index
    if current_user.constructor?
      @documents = policy_scope(Document).where(user_id: params[:user_id])
    else
      @documents = policy_scope(Document).where(user: current_user)
    end
  end

  def show
    @document = Document.find(params[:id])
    authorize @document
  end

  def new
    @document = Document.new
    authorize @document
  end

  def create
  end

  def destroy
  end
end
