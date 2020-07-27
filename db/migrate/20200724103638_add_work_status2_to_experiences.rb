class AddWorkStatus2ToExperiences < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :work_status2, :integer
  end
end
