class CreateBookcases < ActiveRecord::Migration[5.2]
  def change
    create_table :bookcases do |t|
      t.references :book, foreign_key: true
      t.references :reader, foreign_key: true
      t.integer :evaluation

      t.timestamps
    end
  end
end
