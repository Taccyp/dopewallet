class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :password
      t.integer :phone
      t.decimal :cash_balance

      t.timestamps null: false
    end
  end
end
