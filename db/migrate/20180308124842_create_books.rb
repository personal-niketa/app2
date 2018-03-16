class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :author_id
      t.datetime :published_at
      t.references :author, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
