class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.text :full_name
      t.string :address
      t.string :phone
      t.string :email
      t.text :descr

      t.timestamps
    end
  end
end
