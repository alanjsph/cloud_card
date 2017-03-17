class BusinessCardsController < ApplicationController

  def show
    @card = BusinessCard.find(params[:id])
    render json: @card
  end

end
