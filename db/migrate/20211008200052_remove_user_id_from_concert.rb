class RemoveUserIdFromConcert < ActiveRecord::Migration[6.1]
  def change
    remove_column :concerts, :user_id, :integer
  end
end
