class ReceiptsController < ApplicationController
  before_action :authenticate_user!

  def index
    @receipts = Receipt.all
    # @receipts = Receipt.includes(:user).order("created_at DESC")
  end

  def new
    @receipt = Receipt.new
  end

  def create
    @receipt = Receipt.new(receipt_params)
    
    if @receipt.save
      redirect_to root_path
    else
      render 'receipts/new'
    end
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private

  def receipt_params
    params.require(:receipt).permit(:image, :date, :comment, :category_id)
  end
end
