class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end

    add_index :categories, :deleted_at
    add_index :categories, :created_by
    add_index :categories, :updated_by
    add_index :categories, :deleted_by
  end
end
