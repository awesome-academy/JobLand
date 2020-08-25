class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.string :stripe_customer_id
      t.string :session_token
      t.string :subscription_status
      t.string :plan
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
