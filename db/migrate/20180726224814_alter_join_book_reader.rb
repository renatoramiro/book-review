class AlterJoinBookReader < ActiveRecord::Migration[5.2]
  def change
    change_table :comments do |t|
      t.references :reader, foreign_key: true
    end
  end
end
