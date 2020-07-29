class AddWorkStatusToExperiences < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :work_status, :integer
  end
end
