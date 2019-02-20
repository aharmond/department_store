class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.belongs_to :department, foreign_key: true

      t.timestamps
    end
  end
end
