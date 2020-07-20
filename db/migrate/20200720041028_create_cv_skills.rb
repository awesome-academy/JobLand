class CreateCvSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :cv_skills do |t|
      t.integer :Cv_id
      t.integer :shill_id
      t.integer :year_exp
      t.text :level

      t.timestamps
    end
  end
end
