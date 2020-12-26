class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
    assets = Asset.where(user: current_user)
    @assets = assets.sort_by { |event| [event.trade] }
  end

end
