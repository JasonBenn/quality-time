class CreateHangouts < ActiveRecord::Migration
  def change
    create_table :hangouts do |t|
      t.references :friend, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
