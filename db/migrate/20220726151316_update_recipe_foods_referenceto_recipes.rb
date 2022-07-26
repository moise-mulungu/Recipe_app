class UpdateRecipeFoodsReferencetoRecipes < ActiveRecord::Migration[7.0]
  def change
    remove_reference :recipe_foods, :recipe
    add_reference :recipe_foods, :recipe, foreign_key: {to_table: :recipes}
  end
end
