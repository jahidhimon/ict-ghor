class CreateChapters < ActiveRecord::Migration[8.0]
  def change
    create_table :chapters do |t|
      t.string :name, null: false
      t.integer :position, null: false

      t.timestamps
    end
  end
end
