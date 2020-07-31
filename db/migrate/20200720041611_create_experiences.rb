class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string :name
      t.references :cv, foreign_key: true

      t.timestamps
    end
  end
end
