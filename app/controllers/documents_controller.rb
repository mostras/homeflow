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
    @document = Document.new(document_params)
    authorize @document
    @document.user = current_user
    if @document.save
      redirect_to documents_path
    else
      render :new
    end

  end

  def destroy
  end

  private

  def document_params
    params.require(:document).permit(:title, :category, :photos)
  end

end
