class Encounters < ActiveRecord::Migration
  def change
    create_table :encounters do |t|
      t.string :visitNumber 
      t.datetime :admittedAt
      t.datetime :dischargedAt 
      t.string :location
      t.integer :room
      t.integer :bed
      
      t.references :patient
    end
  end
end
