class CreateCvs < ActiveRecord::Migration[6.0]
  def change
    create_table :cvs do |t|
      t.integer :user_id
      t.text :descr

      t.timestamps
    end
  end
end
