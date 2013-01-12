class CreateUserTypes < ActiveRecord::Migration
  def change
    create_table :user_types do |t|
      t.int :id
      t.string :name

      t.timestamps
    end
  end
end
