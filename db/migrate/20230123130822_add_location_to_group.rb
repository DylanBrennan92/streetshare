class AddLocationToGroup < ActiveRecord::Migration[7.0]
  def change
    add_column :groups, :location, :string
  end
end
