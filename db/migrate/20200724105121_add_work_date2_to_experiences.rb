class AddWorkDate2ToExperiences < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :work_date2, :date
  end
end
