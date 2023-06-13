class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.binary :icon, limit: 10.megabytes

      t.timestamps
    end
  end
end
