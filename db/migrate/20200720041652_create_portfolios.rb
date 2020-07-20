class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.integer :cv_id
      t.text :descr

      t.timestamps
    end
  end
end
