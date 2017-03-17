class BusinessCardsController < ApplicationController
  def index
  end

  def new
  end

  def show
    @user = User.find(params[:id])
    @business_cards = @user.business_cards.all
  end
end
