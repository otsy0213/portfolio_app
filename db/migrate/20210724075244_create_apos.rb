class CreateApos < ActiveRecord::Migration[6.1]
  def change
    create_table :apos do |t|
      t.string :name
      t.datetime :date
      t.string :address
      t.string :content
      t.string :memo

      t.timestamps
    end
  end
end
