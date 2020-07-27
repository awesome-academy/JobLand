class AddDescriptionToExperiences < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :description, :string
  end
end
