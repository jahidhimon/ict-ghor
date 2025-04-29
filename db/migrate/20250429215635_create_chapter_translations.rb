class CreateChapterTranslations < ActiveRecord::Migration[8.0]
  def change
    create_table :chapter_translations do |t|
      t.string :locale
      t.string :name
      t.references :chapter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
