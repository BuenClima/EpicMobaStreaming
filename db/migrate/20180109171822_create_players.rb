class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :nick
      t.string :origin
      t.references :team, foreign_key: true
      t.string :image
      t.text :biography
      t.string :position

      t.timestamps
    end
  end
end
