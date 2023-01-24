class AddUserIdToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :posted_by, :string
  end
end
