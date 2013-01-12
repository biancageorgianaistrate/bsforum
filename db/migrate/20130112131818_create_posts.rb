class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :id
      t.integer :threadId
      t.integer :userId
      t.string :content
      t.integer :postStatus
      t.datetime :dateAndTime

      t.timestamps
    end
  end
end
