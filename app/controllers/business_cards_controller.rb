class BusinessCardsController < ApplicationController
  def index
  end

  def new
  end

  def show
    @user = User.find(params[:id])
    @business_cards = @user.business_cards
    #@business_cards = @user.business_cards.all
    email = @user.business_cards.pluck(:email).map.with_index{|email, index| {index => email}}.reduce(:merge)
    render json: @business_cards
    #render json: {alan: 123}
  end

  def email
    @user = User.find(params[:id])
    email = @user.business_cards.pluck(:email).map.with_index{|email, index| {index => email}}.reduce(:merge)
    render json: {"email" => email}
  end

end
