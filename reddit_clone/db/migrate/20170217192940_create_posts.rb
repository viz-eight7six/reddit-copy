class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :url
      t.text :content
      t.integer :sub_id, null: false
      t.integer :user_id, null: false
      t.timestamps null: false
    end
      add_index(:posts, [:title, :sub_id, :user_id])
  end
end
