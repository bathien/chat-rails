class CreateRelies < ActiveRecord::Migration[5.0]
  def change
    create_table :relies do |t|
      t.text :content
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.references :shop, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
