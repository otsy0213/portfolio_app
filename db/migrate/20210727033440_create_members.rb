class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :image
      t.string :name
      t.string :department
      t.string :password_digest
      t.string :status

      t.timestamps
    end
  end
end
