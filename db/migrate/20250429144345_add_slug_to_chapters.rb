class AddSlugToChapters < ActiveRecord::Migration[8.0]
  def change
    add_column :chapters, :slug, :string
  end
end
