class CreateUserConnections < ActiveRecord::Migration[5.0]
  def change
    create_table :user_connections do |t|
      t.references :user
      t.references :business_card
      t.string "notes"
      t.timestamps
    end
  end
end
