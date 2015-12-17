require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change
  	create_table :students do |t|
      t.string :first_name, length: 64
      t.string :last_name, length: 64
      t.string :gender, length: 64
      t.date :birthday
      t.text :email, length:64
      t.string :phone, length:10
      t.timestamps

  	end
    # HINT: checkout ActiveRecord::Migration.create_table
  end
end
