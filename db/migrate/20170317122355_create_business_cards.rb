class CreateBusinessCards < ActiveRecord::Migration[5.0]
  def change
    create_table :business_cards do |t|
      t.string "name"
      t.integer "mobile"
      t.string "email"
      t.string "img"
      t.integer "user_id"
      t.timestamps
    end
  end
end
