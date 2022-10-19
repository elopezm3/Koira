class RemovePermissionLevelFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :permission_level, :integer
  end
end
