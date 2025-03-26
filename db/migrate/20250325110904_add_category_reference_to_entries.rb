class AddCategoryReferenceToEntries < ActiveRecord::Migration[8.0]
  def change
    add_reference :entries, :category
  end
end
