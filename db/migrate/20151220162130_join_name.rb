require_relative '../config'

class JoinName < ActiveRecord::Migration

  def up
    add_column :students, :name, :string 
    add_column :students, :address, :text

    Student.all.each do |person|
      person.update_attributes! :name => person.first_name + " " + person.last_name
    end

    remove_column :students, :first_name
    remove_column :students, :last_name  
  end

  def down
    add_column :students, :first_name, :string
    add_column :students, :last_name, :string

    Student.all.each do |person|
      person.update_attributes! :first_name => person.name.match(/\w+/)[0]
      person.update_attributes! :last_name => person.name.match(/\w+/)[1]
    end

    remove_column :students, :name
    remove_column :studennts, :address
  end
end
 