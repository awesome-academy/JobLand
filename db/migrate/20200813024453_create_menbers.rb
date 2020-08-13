class CreateMenbers < ActiveRecord::Migration[6.0]
  def change
    create_table :menbers do |t|
      t.references :user, foreign_key: true
      t.references :company,foreign_key: true
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
