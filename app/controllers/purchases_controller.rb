class PurchasesController < ApplicationController
  def index
    @purchases = Purchase.where(user: current_user)
  end

  def new
    @purchase = Purchase.new

    @purchase.wine_id = params[:wine_id]
  end

  def create
    # ストロングパラメータから精査されたデータだけをインスタンスに格納
    @purchase = Purchase.new(purchase_params)

    @purchase.user = current_user
    # インスタンスの保存に成功した場合の処理
    if @purchase.save
      flash[:success] = "データを登録しました"
      redirect_to purchases_path

    # インスタンスの保存に失敗した場合の処理
    else
      flash[:danger] = "データの登録に失敗しました"
      render :new
    end
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  def edit
  end

  private

  def purchase_params
    params.require(:purchase).permit(:location_id, :user_id, :wine_id, :star, :comment)
  end

end
