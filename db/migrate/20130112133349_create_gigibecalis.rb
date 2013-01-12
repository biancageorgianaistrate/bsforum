class CreateGigibecalis < ActiveRecord::Migration
  def change
    create_table :gigibecalis do |t|
      t.string :antena1

      t.timestamps
    end
  end
end
