class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.text :brand
      t.text :name
      t.text :profile
      t.references :shop, foreign_key: true

      t.timestamps
    end
  end
end
