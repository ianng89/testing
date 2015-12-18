require_relative '../config'

class CreateTeachers < ActiveRecord::Migration

	
  def change
    create_table :teachers do |t|
      t.string :first_name, length: 64
      t.string :last_name, length: 64
      t.text :email, length: 64
      t.string :phone 
  		end
  end
 end