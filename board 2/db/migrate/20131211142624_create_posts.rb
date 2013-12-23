class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :Message
      t.string :Name
      t.string :Email

      t.timestamps
    end
  end
end
