class UsersController < ApplicationController
  def index
    @users = User.all
  end


  def receivedcards
    @user = User.find(params[:id])
    connections = UserConnection.where({:user => @user})
    render json: connections.map { |c| {"card" => c.business_card, "note" => c.notes} }.reduce(:merge), status: 200
    #render json: {"sd":"sd"}
  end

  def receivedcards_email
    @user = User.find(params[:id])
    @business_cards = @user.business_cards
    #@business_cards = @user.business_cards.all
    email = @user.business_cards.pluck(:email).map.with_index{|email, index| {index => email}}.reduce(:merge)
    render json: email, status: 200
    #render json: {alan: 123}
  end

  def ownedbusinesscards
    @user = User.find(params[:id])
    @business_cards = @user.owned_business_cards
    render json: @business_cards, status: 200
    #render json: {alan: 123}
  end


end
