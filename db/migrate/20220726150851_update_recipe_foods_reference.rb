# Service to download ftp files from the server
class UpdateRecipeFoodsReference < ActiveRecord::Migration[7.0]
  def change
    remove_reference :recipe_foods, :food
    add_reference :recipe_foods, :food, foreign_key: { to_table: :foods }
  end
end
