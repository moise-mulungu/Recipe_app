# frozen_string_literal: true

# Service to download ftp files from the server
class CreateRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_foods do |t|
      t.integer :quantity
      t.integer :recipe_id
      t.integer :food_id

      t.timestamps
    end
  end
end
