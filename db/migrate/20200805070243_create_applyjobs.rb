class CreateApplyjobs < ActiveRecord::Migration[6.0]
  def change
    create_table :applyjobs do |t|
      t.integer :apply_status, default: 0
      t.references :user, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
