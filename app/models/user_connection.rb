class UserConnection < ApplicationRecord
  belongs_to :user
  belongs_to :business_card
end
