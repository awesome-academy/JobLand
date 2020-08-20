class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|

      t.string :title
      t.references :company, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :sex
      t.integer :time_work
      t.text :grade
      t.integer :exp
      t.integer :salary
      t.integer :number
      t.boolean :slide
      t.text :area
      t.text :info
      t.date :from_date
      t.date :to_date
      t.boolean :approved, default: false
      t.timestamps
    end
  end
end
