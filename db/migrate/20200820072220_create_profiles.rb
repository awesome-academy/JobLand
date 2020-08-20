class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :img_name, default: 1

      t.timestamps
    end
  end
end
