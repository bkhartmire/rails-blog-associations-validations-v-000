class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name

      t.timestamps null: false
    end

    add_column :posts, :content, :text
    add_column :posts, :user_id, :integer
  end
end
