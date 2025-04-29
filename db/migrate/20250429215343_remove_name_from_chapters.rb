class RemoveNameFromChapters < ActiveRecord::Migration[8.0]
  def change
    remove_column :chapters, :name, :string
  end
end
