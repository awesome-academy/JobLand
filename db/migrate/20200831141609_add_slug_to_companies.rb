class AddSlugToCompanies < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :slug, :string
  end
end
