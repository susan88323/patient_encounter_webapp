class AddNotNull < ActiveRecord::Migration
  def change
    change_column_null :patients, :firstName, false
    change_column_null :patients, :lastName, false
    change_column_null :patients, :mrn, false
    change_column_null :encounters, :visitNumber, false
    change_column_null :encounters, :admittedAt, false
    add_index :patients, :mrn, :unique => true
  end
end
