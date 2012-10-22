class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.string :species
      t.string :common_names
      t.string :colour

      t.text :description
      t.text :comments_care

      t.string :soil
      t.string :position
      t.string :genus
      t.string :dimensions
      t.string :flowering_season
      t.string :foliage_colour
      t.string :potential_use
      t.string :potential_style

      t.timestamps
    end
  end
end
