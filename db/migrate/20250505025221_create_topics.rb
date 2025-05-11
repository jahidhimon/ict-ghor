class CreateTopics < ActiveRecord::Migration[8.0]
  def change
    create_table :topics do |t|
      t.string :slug
      t.decimal :position, precision: 6, scale: 3
      t.references :chapter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
