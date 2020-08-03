class CreateCvLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :cv_languages do |t|
      t.integer :cv_id
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
