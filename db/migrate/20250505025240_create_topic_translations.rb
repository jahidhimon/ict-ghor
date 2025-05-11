class CreateTopicTranslations < ActiveRecord::Migration[8.0]
  def change
    create_table :topic_translations do |t|
      t.references :topic, null: false, foreign_key: true
      t.string :locale
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
