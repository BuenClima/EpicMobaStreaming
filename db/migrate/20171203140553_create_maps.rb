class CreateMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :maps do |t|
      t.string :name
      t.string :image
      t.datetime :created_at
      t.datetime :updated_at
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
