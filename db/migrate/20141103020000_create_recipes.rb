class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string      :name
      t.string      :ingredients
      t.string      :instructions
      t.belongs_to  :cookbook

      t.timestamps
    end
  end
end
