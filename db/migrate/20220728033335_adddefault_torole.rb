class AdddefaultTorole < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :role, 'regular'
  end
end
