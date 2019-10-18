class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.text :rank
      t.integer :year
      t.integer :user_id
      t.timestamps
    end
    add_index :members, :user_id
  end
end
