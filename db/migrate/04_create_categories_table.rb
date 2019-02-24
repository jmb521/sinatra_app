class CreateCategoriesTable < ActiveRecord::Migration[4.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :recipe_id
    end
  end

end
