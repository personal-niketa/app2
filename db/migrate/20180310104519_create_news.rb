class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :name
      t.text :comment

      t.timestamps null: false
    end
  end
end
