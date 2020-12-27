class AssetsController < ApplicationController
  def create
    name = params[:asset][:name]
    @asset = Asset.new(asset_params)
    @asset.user = current_user
    @asset.name = name.upcase
    if @asset.save
      redirect_to root_path, notice: 'Product created!'
    else
      render :new
    end
  end

  def show
    asset = Asset.find(params[:id])
    @assets = Asset.where(name: asset.name)
  end

  def edit
    @asset = Asset.find(params[:id])
    unless @asset.user == current_user
      redirect_to root_path, notice: 'Not allowed to Edit 😥'
    end
  end

  def update
    @asset = Asset.find(params[:id])
    unless @asset.user == current_user
      redirect_to root_path, notice: 'Not allowed to Update 😥'
    end
    if @asset.update(asset_params)
      redirect_to root_path, notice: 'Asset Updated!'
    else
      render :edit
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
    params.require(:asset).permit(:trade, :operation, :name.upcase, :quantity, :price, :emoluments)
  end
end
