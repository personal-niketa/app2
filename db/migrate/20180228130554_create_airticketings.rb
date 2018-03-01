class CreateAirticketings < ActiveRecord::Migration
  def change
    create_table :airticketings do |t|
      t.string :passeger_name
      t.datetime :dpt_d

      t.timestamps null: false
    end
  end
end
