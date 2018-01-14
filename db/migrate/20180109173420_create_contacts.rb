class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :gender
      t.string :visitant_type
      t.text :message
      t.datetime :created_at

      t.timestamps
    end
  end
end
