class CreateUserCards < ActiveRecord::Migration
  def change
    create_table :user_cards do |t|
        t.integer :card_id
        t.integer :user_id

      t.timestamps null: false
    end
  end
end
