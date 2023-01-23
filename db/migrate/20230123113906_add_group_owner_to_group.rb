class AddGroupOwnerToGroup < ActiveRecord::Migration[7.0]
  def change
    add_column :groups, :group_owner, :string
  end
end
