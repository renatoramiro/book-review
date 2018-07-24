class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :book, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
