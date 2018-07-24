class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :number_of_pages
      t.text :review

      t.timestamps
    end
  end
end
