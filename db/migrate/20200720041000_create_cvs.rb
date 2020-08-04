class CreateCvs < ActiveRecord::Migration[6.0]
  def change
    create_table :cvs do |t|
      t.references :user, foreign_key: true
      t.text :descr
      t.text :introduction
      t.timestamps
    end
  end
end
