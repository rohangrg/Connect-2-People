class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :parent_id
      t.string :parent_type

      t.timestamps
    end
  end
end
