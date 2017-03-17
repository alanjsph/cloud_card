class User < ApplicationRecord
  has_many :owned_business_cards, class_name: "BusinessCard"

  has_many :user_connections
  has_many :business_cards, through: :user_connections, class_name: "BusinessCard"

end
