class AssetsController < ApplicationController
  def create
    @asset = Asset.new(asset_params)
    @asset.user = current_user
    if @asset.save
      redirect_to root_path, notice: 'Product created!'
    else
      render :new
    end
  end

  def destroy
    @asset = Asset.find(params[:id])
    unless @asset.user == current_user
      redirect_to root_path, notice: 'Not Allowed to Delete 😠'
    end
    @asset.destroy
    redirect_to root_path, notice: 'Asset destroyed!'
  end

  private

  def asset_params
    params.require(:asset).permit(:trade, :operation, :name, :quantity, :price, :emoluments)
  end
end
