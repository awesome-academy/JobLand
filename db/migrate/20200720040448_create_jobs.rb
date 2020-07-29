class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :company_id
      t.integer :sex
      t.integer :time_work
      t.text :grade
      t.integer :exp
      t.integer :salary
      t.integer :number
      t.text :area
      t.text :info
      t.text :status

      t.timestamps
    end
  end
end
