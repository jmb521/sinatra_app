class CreateIngredientsTable < ActiveRecord::Migration[4.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :quantity
      t.string :measurement
      t.integer :recipe_id
    end
  end
end
