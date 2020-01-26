class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :fname
      t.string :lname
      t.string :books, array: true, default: []
      t.integer :book_ids, array: true, default: []

      t.timestamps
    end
  end
end
