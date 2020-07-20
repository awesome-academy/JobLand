class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :sex
      t.date :dob
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
