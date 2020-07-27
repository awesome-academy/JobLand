class AddWorkDateToExperiences < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :work_date, :date
  end
end
