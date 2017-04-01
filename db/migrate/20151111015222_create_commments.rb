class CreateCommments < ActiveRecord::Migration
  def change
    create_table :commments do |t|
      t.integer :user_id
      t.string :commentable_type
      t.integer :commentable_id
      t.text :content

      t.timestamps null: false
    end
  end
end
