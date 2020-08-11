class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :sex, default: 0
      t.date :dob
      t.string :phone
      t.string :address
      t.integer :company_id
      t.timestamps
    end
  end
end
