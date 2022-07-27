# frozen_string_literal: true

# Service to download ftp files from the server
class ChangeUsers < ActiveRecord::Migration[7.0]
  def change
    change_column(:recipes, :user_id, :integer)
    change_column(:recipes, :preparation_time, :string)
    change_column(:recipes, :cooking_time, :string)
  end
end
