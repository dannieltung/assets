class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
    assets = Asset.where(user: current_user)
    @assets = assets.sort_by { |event| [event.trade] }
    @total_invested = 0
    @assets.each do |asset|
      if asset.operation == "C"
        @total_invested += ((asset.quantity * asset.price) + asset.emoluments)
      end
    end
  end
end
