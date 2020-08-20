class CreateNews < ActiveRecord::Migration[6.0]
  def change
    create_table :news do |t|
      t.text :content
      t.text :link

      t.timestamps
    end
  end
end
