class WelcomeController < ApplicationController
  def index
    if current_user
      @business_cards = current_user.business_cards
    end
  end


end
