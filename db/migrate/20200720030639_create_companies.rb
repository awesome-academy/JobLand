class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.text :full_name
      t.string :address
      t.string :phone
      t.string :email
      t.text :descr
      t.text :link
      t.integer :total
      t.decimal :latitude
      t.decimal :longitude
      t.text :map
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
