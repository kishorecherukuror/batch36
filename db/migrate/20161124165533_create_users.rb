class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :ful_name
      t.text :address
      t.string :email
      t.string :gender
      t.string :phone
      t.integer :age
      t.string :dob

      t.timestamps null: false
    end
  end
end
