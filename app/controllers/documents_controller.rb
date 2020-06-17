class DocumentsController < ApplicationController
  def index
    if current_user.constructor?
      @user = User.find(params[:user_id])
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
    if current_user.constructor?
      @user = User.find(params[:user_id])
    end

    @document = Document.new
    authorize @document
  end

  def create
    @document = Document.new(document_params)
    authorize @document
    if current_user.constructor?
      @user = User.find(params[:user_id])
      @document.user = @user
        if @document.save
          redirect_to user_documents_path(@user)
        else
          render :new
        end
    else
      @document.user = current_user
      if @document.save
        redirect_to documents_path
      else
        render :new
      end
    end

  end

  def destroy
  end

  private

  def document_params
    params.require(:document).permit(:title, :category, :photos)
  end

end

