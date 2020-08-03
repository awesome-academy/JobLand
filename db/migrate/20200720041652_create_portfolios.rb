class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|

      t.string :title
      t.string :link
      t.text :description
      t.string :month
      t.string :year
      t.references :cv, null: false, foreign_key: true
      t.text :descr

      t.timestamps
    end
  end
end
