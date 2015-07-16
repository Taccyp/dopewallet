class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :number
      t.string :brand
      t.integer :exp_month
      t.integer :exp_year

      t.timestamps null: false
    end
  end
end
