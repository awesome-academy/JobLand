class CreateCvSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :cv_skills do |t|
      t.references :cv, foreign_key: true
      t.references :skill, foreign_key: true
      t.integer :cv_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
