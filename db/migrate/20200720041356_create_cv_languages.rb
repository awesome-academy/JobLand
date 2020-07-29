class CreateCvLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :cv_languages do |t|
      t.integer :cv_id
      t.integer :language_id

      t.timestamps
    end
  end
end
