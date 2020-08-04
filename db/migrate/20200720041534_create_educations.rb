class CreateEducations < ActiveRecord::Migration[6.0]
  def change
    create_table :educations do |t|
      t.string :name
      t.integer :cv_id
      t.date :yearschool
      t.text :degree
      t.text :school
      t.text :status

      t.timestamps
    end
  end
end
