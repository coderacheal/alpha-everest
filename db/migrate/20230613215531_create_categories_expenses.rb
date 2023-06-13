class CreateCategoriesExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :categories_expenses do |t|
      t.references :categories, null: false, foreign_key: true
      t.references :expenses, null: false, foreign_key: true

      t.timestamps
    end
  end
end
