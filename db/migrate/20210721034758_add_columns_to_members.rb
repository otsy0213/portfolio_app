class AddColumnsToMembers < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :name, :string
    add_column :members, :image, :string
    add_column :members, :status, :string
  end
end
