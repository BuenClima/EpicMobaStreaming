class CreateTournaments < ActiveRecord::Migration[5.1]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.date :date
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
