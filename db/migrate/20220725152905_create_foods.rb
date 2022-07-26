# frozen_string_literal: true

# Service to download ftp files from the server
class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :measurement_unit
      t.integer :price
      t.integer :quantity
      t.integer :user_id

      t.timestamps
    end
  end
end