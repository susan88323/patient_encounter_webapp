class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :firstName 
      t.string :middleName
      t.string :lastName 
      t.float :weight
      t.float :height
      t.string :mrn 
    end
  end
end
