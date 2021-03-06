class CreateCvLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :cv_languages do |t|
      t.references :cv, foreign_key: true
      t.references :language, foreign_key: true

      t.timestamps
    end
    add_index :cv_languages, [:language_id, :cv_id], unique: true
  end
end
