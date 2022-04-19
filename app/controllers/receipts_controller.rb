class ReceiptsController < ApplicationController
  before_action :authenticate_user!

  def index
    @receipts = Receipt.all
    # @receipts = Receipt.where(user_id: current.user_id)includes(:user).order("created_at DESC")
    # 投稿した人＝ログインしているユーザーのみ表示
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
    params.require(:receipt).permit(:image, :date, :comment, :category_id).merge(user_id: current_user.id)
  end
end
